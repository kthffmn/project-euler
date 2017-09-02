def smallest_multiple(max)
  product = max
  product += max until is_divisible?(max, product)
  product
end

def is_divisible?(max, product)
  return false if odd?(product)

  (3..max).all? do |factor|
    product % factor == 0
  end
end

def odd?(number)
  number % 2 != 0
end