require_relative "../lib/pathagorean_triplet_product.rb"
require_relative "./spec_helper.rb"

describe "#pathagorean_triplet_product" do
  context "with 12" do
    it "returns 60" do
      expect(pathagorean_triplet_product(12)).to eq(60)
    end
  end

  context "with 1,000" do
    it "returns 31,875,000" do
      expect(pathagorean_triplet_product(1000)).to eq(31875000)
    end
  end
end

describe "#pathagorean_triplets" do
  context "with 12" do
    it "returns an array containing 3,4, and 5" do
      triplets = pathagorean_triplets(12)
      expect(triplets.length).to eq(3)
      expect(triplets).to include(3)
      expect(triplets).to include(4)
      expect(triplets).to include(5)
    end
  end
end

