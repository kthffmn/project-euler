def largest_palindrome(num_of_digits)
  limit = calculate_limit(num_of_digits)
  largest_palindrome = 1
  (1...limit).each do |first_factor|
    (1...limit).each do |second_factor|
      product = first_factor * second_factor
      if (is_palindrome?(product) && product > largest_palindrome)
        largest_palindrome = product
      end
    end
  end
  largest_palindrome
end

def calculate_limit(num_of_digits)
  limit = 1
  num_of_digits.times do
    limit *= 10
  end
  limit
end

def is_palindrome?(number)
  stringified_number = number.to_s
  stringified_number == stringified_number.reverse
end