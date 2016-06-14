require 'spec_helper'
require 'active_support/inflector'

describe StringWithUnit::Value do
  let(:instance) do
    described_class.new(*args)
  end

  describe 'without specifying plural unit' do
    let(:args) do
      [value, 'gem']
    end

    context 'for singular number' do
      let(:value) { 1 }
      it 'returns value with singular unit' do
        expect(instance.to_s).to eq("1 gem")
      end
    end

    context 'for plural number' do
      let(:value) { 2 }
      it 'returns value with plural unit' do
        expect(instance.to_s).to eq("2 gems")
      end
    end
  end
end
