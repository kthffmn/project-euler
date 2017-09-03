def largest_product_in_a_series(file_path, number_of_products)
  max_product = 0
  numbers = get_number_array(file_path)
  start_index = 0

  final_starting_index = stop_index(numbers.length, number_of_products)

  while start_index <= final_starting_index
    stop_index = start_index + number_of_products - 1
    factors = numbers[start_index..stop_index]
    product = factors.inject(1) { |product, factor| product *= factor }
    max_product = product if product > max_product
    start_index += 1
  end

  max_product
end

def stop_index(total_number_of_numbers, number_of_products)
  total_number_of_numbers - number_of_products
end

def get_number_array(file_path)
  absolute_path = File.expand_path("../" + file_path, File.dirname(__FILE__))
  numbers = []
  File.open(absolute_path, "r") do |f|
    f.each_line { |line| numbers << line.chomp.split("").map(&:to_i) }
  end
  numbers.flatten
end