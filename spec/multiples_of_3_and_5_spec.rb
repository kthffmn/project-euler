require_relative "./spec_helper.rb"
require_relative "../lib/multiples_of_3_and_5.rb"

describe "#sum_multiples_of_3_and_5" do
  context "with an arugment of 10" do
    it "returns 23" do
      expect(sum_multiples_of_3_and_5(10)).to eq(23)
    end
  end

  context "with an arugment of 1000" do
    it "returns 233168" do
      expect(sum_multiples_of_3_and_5(1000)).to eq(233168)
    end
  end
end

describe "#is_multiple_of_3_or_5?" do
  context "with an arugment not divisible by three or five" do
    it "returns false" do
      expect(is_multiple_of_3_or_5?(11)).to eq(false)
    end
  end

  context "with an arugment divisible by 3" do
    it "returns true" do
      expect(is_multiple_of_3_or_5?(6)).to eq(true)
    end
  end

  context "with an arugment divisible by 5" do
    it "returns true" do
      expect(is_multiple_of_3_or_5?(10)).to eq(true)
    end
  end
end