def sum_square_difference(max)
  square_of_the_sum(max) - sum_of_the_squares(max)
end

def sum_of_the_squares(max)
  (1..max).inject(0) do |sum, number|
    square = number * number
    sum += square
  end
end

def square_of_the_sum(max)
  sum = (1..max).reduce(:+)
  sum * sum
end
