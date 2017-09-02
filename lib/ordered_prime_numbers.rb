def ordered_prime_numbers(position)
  num_of_primes = 1
  prime = 2

  until num_of_primes == position
    prime = next_prime_number(prime)
    num_of_primes += 1
  end

  return prime
end

def next_prime_number(num)
  next_possible_prime = num + 1
  next_possible_prime += 1 until is_prime?(next_possible_prime)
  next_possible_prime
end

def is_prime?(possible_prime_number)
  square_root_of_possible_prime_number = square_root(possible_prime_number)
  (2..square_root_of_possible_prime_number).all? do |number|
    !is_factor?(possible_prime_number, number)
  end
end