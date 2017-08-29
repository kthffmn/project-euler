require_relative "./spec_helper.rb"
require_relative "../lib/largest_palindrome.rb"

describe "#largest_palindrome" do
  context "with two digits" do
    it "returns 9,009" do
      expect(largest_palindrome(2)).to eq(9009)
    end
  end

  context "with three digits" do
    it "returns 906,609" do
      expect(largest_palindrome(3)).to eq(906609)
    end
  end
end

describe "#calculate_limit" do
  context "with 2" do
    it "returns 100" do
      expect(calculate_limit(2)).to eq(100)
    end
  end

  context "with 3" do
    it "returns 1,000" do
      expect(calculate_limit(3)).to eq(1000)
    end
  end
end

describe "#is_palindrome?" do
  context "with 123454321" do
    it "returns true" do
      expect(is_palindrome?(123454321)).to eq(true)
    end
  end

  context "with 7001008" do
    it "returns false" do
      expect(is_palindrome?(7001008)).to eq(false)
    end
  end
end
