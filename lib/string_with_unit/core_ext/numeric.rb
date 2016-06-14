class Numeric
  def to_string_with_unit(singular_unit, plural_unit)
    unit = (self.abs == 1) ? singular_unit : plural_unit
    "#{self} #{unit}"
  end
  alias_method :to_s_with_unit, :to_string_with_unit
end
