class Integer
  def to_string_with_unit(singular_unit, plural_unit)
    StringWithUnit::Value.new(self, singular_unit, plural_unit).to_s
  end
  alias_method :to_s_with_unit, :to_string_with_unit
end
