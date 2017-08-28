require_relative "./spec_helper.rb"
require_relative "../lib/sum_of_even_fibonacci_numbers.rb"

describe "#sum_of_even_fibonaci_numbers" do
  context "with a max value of 100" do
    it "returns 44" do
      expect(sum_of_even_fibonaci_numbers(100)).to eq (44)
    end
  end

  context "with a max value of 150" do
    it "returns 188" do
      expect(sum_of_even_fibonaci_numbers(150)).to eq (188)
    end
  end

  context "with a max value of 4,000,000" do
    it "returns 4,613,732" do
      expect(sum_of_even_fibonaci_numbers(4000000)).to eq (4613732)
    end
  end
end