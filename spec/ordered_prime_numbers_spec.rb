require_relative "../lib/ordered_prime_numbers.rb"
require_relative "./spec_helper.rb"

describe "#ordered_prime_numbers" do
  context "with 6th position" do
    it "returns 13" do
      expect(ordered_prime_numbers(6)).to eq(13)
    end
  end

  xcontext "with 10,001th position" do
    it "returns 104,743" do
      expect(ordered_prime_numbers(10001)).to eq(104743)
    end
  end
end

describe "#next_prime_number" do
  context "with 0" do
    it "returns 2" do
      expect(next_prime_number(2)).to eq(3)
    end
  end

  context "with 3" do
    it "returns 5" do
      expect(next_prime_number(3)).to eq(5)
    end
  end

  context "with 11" do
    it "returns 13" do
      expect(next_prime_number(11)).to eq(13)
    end
  end
end
