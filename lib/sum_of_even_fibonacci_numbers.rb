def sum_of_even_fibonaci_numbers(max_value)
  first_number = 1
  second_number = 2
  sum = 2

  while true do
    third_number = next_number(first_number, second_number)
    return sum if(third_number >= max_value)

    sum += third_number if is_even?(third_number)

    first_number = second_number
    second_number = third_number
  end
end

def next_number(first_number, second_number)
  first_number + second_number
end

def is_even?(number)
  number % 2 == 0
end