def largest_prime_factor(composite_number)
  largest_prime_factor = 0
  square_root_of_composite_number = square_root(composite_number)
  (3...square_root_of_composite_number).each do |number|
    if is_prime?(number) && is_factor?(composite_number, number)
      largest_prime_factor = number
    end
  end
  largest_prime_factor
end

def is_prime?(possible_prime_number)
  square_root_of_possible_prime_number = square_root(possible_prime_number)
  (2...square_root_of_possible_prime_number).all? do |number|
    !is_factor?(possible_prime_number, number)
  end
end

def is_factor?(composite_number, number)
  composite_number % number == 0
end

def square_root(number)
  Math.sqrt(number)
end
