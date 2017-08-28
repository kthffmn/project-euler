def sum_multiples_of_3_and_5(limit)
  (0...limit).inject(0) do |sum, number|
    sum += number if is_multiple_of_3_or_5?(number)
    sum
  end
end

def is_multiple_of_3_or_5?(number)
  number % 5 == 0 || number % 3 == 0
end