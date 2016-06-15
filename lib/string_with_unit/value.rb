module StringWithUnit
  class Value
    def initialize(value, singular_unit, plural_unit = nil)
      @value = value
      @singular_unit = singular_unit
      @plural_unit = plural_unit
    end
    attr_reader :value, :singular_unit

    FORMAT = "%s %s".freeze

    def to_s
      format(FORMAT, value, unit)
    end

    def unit
      singular_number? ? singular_unit : plural_unit
    end

    def singular_number?
      value == 1
    end

    def plural_unit
      if @plural_unit
        @plural_unit
      elsif FORMAT.respond_to?(:pluralize)
        @plural_unit = singular_unit.pluralize
      else
        singular_unit
      end
    end
  end
end
