require_relative "../lib/sum_of_primes.rb"
require_relative "./spec_helper.rb"

describe "#sum_of_primes" do
  context "all primes below 10" do
    it "returns 17" do
      expect(sum_of_primes(10)).to eq(17)
    end
  end

  xcontext "all primes below 2 million" do
    it "returns 142,913,828,922" do
      expect(sum_of_primes(2000000)).to eq(142913828922)
    end
  end
end

describe "#next_prime" do
  context "with 2" do
    it "returns 3" do
      expect(next_prime(2)).to eq(3)
    end
  end

  context "with 5" do
    it "returns 7" do
      expect(next_prime(5)).to eq(7)
    end
  end

  context "with 43" do
    it "returns 47" do
      expect(next_prime(43)).to eq(47)
    end
  end
end