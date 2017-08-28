require_relative "./spec_helper.rb"
require_relative "../lib/fill_in_missing_data.rb"

describe("#fill_in_missing_data") do
  context("with two data sets") do

    initial_data_set = [
      [[1, 10], [2, 20], [4, 40]],
      [[1, 0], [2, 0], [3, 0], [4, 0]]
    ]

    it("adds missing data points") do
      final_data_set = fill_in_missing_data(initial_data_set)

      expect(final_data_set[0][2][0]).to eq(3)
    end

    it("doesn't change input") do
      final_data_set = fill_in_missing_data(initial_data_set)

      expect(final_data_set[0][0]).to eq([1, 10])
      expect(final_data_set[0][1]).to eq([2, 20])
      expect(final_data_set[0][3]).to eq([4, 40])

      expect(final_data_set[1][0]).to eq([1, 0])
      expect(final_data_set[1][1]).to eq([2, 0])
      expect(final_data_set[1][2]).to eq([3, 0])
    end

    it("adds missing y coordinates") do
      final_data_set = fill_in_missing_data(initial_data_set)

      expected_data_set = [
        [[1, 10], [2, 20], [3, 30], [4, 40]],
        [[1, 0], [2, 0], [3, 0], [4, 0]],
      ]

      expect(final_data_set).to eq(expected_data_set)
    end
  end
end