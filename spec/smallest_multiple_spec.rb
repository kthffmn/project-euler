require_relative "../lib/smallest_multiple.rb"
require_relative "./spec_helper.rb"

describe "#smallest_multiple" do
  context "with 10" do
    it "returns 2,520" do
      expect(smallest_multiple(10)).to eq(2520)
    end
  end

  xcontext "with 20" do
    it "returns 232,792,560" do
      expect(smallest_multiple(20)).to eq(232792560)
    end
  end
end

describe "#is_divisible?" do
  context "with a max of 10" do
    it "and a factor of 2,520 returns true" do
      expect(is_divisible?(10, 2520)).to eq(true)
    end

    it "and a factor of 2,519 returns false" do
      expect(is_divisible?(10, 2519)).to eq(false)
    end
  end
end

describe "#odd?" do
  context "with 9" do
    it "returns true" do
      expect(odd?(9)).to eq(true)
    end
  end

  context "with 8" do
    it "returns true" do
      expect(odd?(8)).to eq(false)
    end
  end
end