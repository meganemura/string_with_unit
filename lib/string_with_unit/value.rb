module StringWithUnit
  class Value
    def initialize(value, singular_unit, plural_unit)
      @value = value
      @singular_unit = singular_unit
      @plural_unit = plural_unit
    end
    attr_reader :value, :singular_unit, :plural_unit

    FORMAT = "%s %s".freeze

    def to_s
      format(FORMAT, value, unit)
    end

    def unit
      singular_number? ? singular_unit : plural_unit
    end

    def singular_number?
      value.abs == 1
    end
  end
end
