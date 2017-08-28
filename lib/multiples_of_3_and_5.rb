def sum_multiples_of_3_and_5(limit)
  sum = 0
  (0...limit).each do |number|
    if is_multiple_of_3_or_5?(number)
      sum = sum + number
    end
  end
  sum
end

def is_multiple_of_3_or_5?(number)
  number % 5 == 0 || number % 3 == 0
end