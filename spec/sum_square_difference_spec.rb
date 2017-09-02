require_relative "../lib/sum_square_difference.rb"
require_relative "./spec_helper.rb"

describe "#sum_square_difference" do
  context "with 10" do
    it "returns 2,640" do
      expect(sum_square_difference(10)).to eq(2640)
    end
  end

  context "with 100" do
    it "returns 25,164,150" do
      expect(sum_square_difference(100)).to eq(25164150)
    end
  end
end

describe "#sum_of_the_squares" do
  context "with 10" do
    it "returns 385" do
      expect(sum_of_the_squares(10)).to eq(385)
    end
  end
end

describe "#square_of_the_sum" do
  context "with 10" do
    it "returns 3,025" do
      expect(square_of_the_sum(10)).to eq(3025)
    end
  end
end
