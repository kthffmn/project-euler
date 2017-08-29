require_relative "./spec_helper.rb"
require_relative "../lib/largest_prime_factor.rb"

describe "#largest_prime_factor" do
  context "with 13,195" do
    it "returns 29" do
      expect(largest_prime_factor(13195)).to eq(29)
    end
  end

  xcontext "with 600,851,475,143" do
    it "returns 6,857" do
      expect(largest_prime_factor(600851475143)).to eq(6857)
    end
  end
end

describe "#is_prime?" do
  context "with 6" do
    it "returns false" do
      expect(is_prime?(6)).to eq(false)
    end
  end

  context "with 13" do
    it "returns true" do
      expect(is_prime?(13)).to eq(true)
    end
  end
end

describe "#is_factor?" do
  context "with composite number of 6" do
    it "returns true with 3" do
      expect(is_factor?(6, 3)).to eq(true)
    end

    it "returns false with 5" do
      expect(is_factor?(6, 5)).to eq(false)
    end
  end
end

describe "#square_root" do
  context "with 9" do
    it "returns 3" do
      expect(square_root(9)).to eq(3)
    end
  end

  context "with 100" do
    it "returns 10" do
      expect(square_root(100)).to eq(10)
    end
  end
end