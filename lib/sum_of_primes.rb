
def sum_of_primes(max)
  sum = 2
  prime = 2
  while true
    prime = next_prime(prime)
    return sum if (prime >= max)
    sum += prime
  end
end

def next_prime(prime)
  new_prime = prime + 1
  new_prime += 1 until is_prime?(new_prime)
  new_prime
end

def is_prime?(number)
  square_root = Math.sqrt(number).round
  !(2..square_root).any? { |factor| number % factor == 0 }
end