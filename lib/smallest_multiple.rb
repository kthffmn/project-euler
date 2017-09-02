def smallest_multiple(max)
  product = max
  factors = (3..max).to_a.reverse
  product += max until is_divisible?(factors, product)
  product
end

def is_divisible?(factors, product)
  return false if odd?(product)
  factors.all? { |factor| product % factor == 0 }
end

def odd?(number)
  number % 2 != 0
end