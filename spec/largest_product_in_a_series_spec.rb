require_relative "../lib/largest_product_in_a_series.rb"
require_relative "./spec_helper.rb"

describe "#largest_product_in_a_series" do
  FILE_PATH = "spec/fixtures/ten_thousand_digit_number.txt"

  context "with 4 numbers" do
    it "returns 5,832" do
      expect(largest_product_in_a_series(FILE_PATH, 4)).to eq(5832)
    end
  end

  context "with 13 numbers" do
    it "returns 23,514,624,000" do
      expect(largest_product_in_a_series(FILE_PATH, 13)).to eq(23514624000)
    end
  end
end

describe "#get_number_array" do
  context "with file with numbers 1-9" do
    it "returns array of 1-9" do
      SHORT_NUMBER_FILE_PATH =  "spec/fixtures/short_number.txt"
      expect(get_number_array(SHORT_NUMBER_FILE_PATH)).to eq((1..9).to_a)
    end
  end
end

describe "#stop_index" do
  context "with 12 numbers" do
    it "and a factor number of 3 returns 9" do
      expect(stop_index(12, 3)).to eq(9)
    end
    it "and a factor number of 4 returns 9" do
      expect(stop_index(12, 4)).to eq(8)
    end
  end

  context "with 3 numbers" do
    it "and a factor number of 1 returns 2" do
      expect(stop_index(3, 1)).to eq(2)
    end
  end
end