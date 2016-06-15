require 'spec_helper'

describe Integer do
  describe "#to_string_with_unit" do
    it "expresses value with singular/plural unit" do
      expect(-2.to_string_with_unit("gem", "gems")).to eq("-2 gems")
      expect(-1.to_string_with_unit("gem", "gems")).to eq("-1 gems")
      expect(0.to_string_with_unit("gem", "gems")).to eq("0 gems")
      expect(1.to_string_with_unit("gem", "gems")).to eq("1 gem")
      expect(2.to_string_with_unit("gem", "gems")).to eq("2 gems")
    end
  end
end
