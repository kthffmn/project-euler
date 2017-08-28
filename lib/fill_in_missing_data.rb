def fill_in_missing_data(incomplete_data_sets)
  x_values_hash = {}

  incomplete_data_sets.each do |incomplete_data_set|
    data_set_as_hash = {}
    incomplete_data_set.each do |x_y_coordinate|
      x_coordinate = x_y_coordinate[0]
      x_values_hash[x_coordinate] = 0
    end
  end

  x_values = x_values_hash.keys.sort

  incomplete_data_sets.each do |incomplete_data_set|
    x_values.each.with_index do |x_value, i|
      if incomplete_data_set[i][0] != x_value
        previous_coords = incomplete_data_set[i - 1]
        next_coords = incomplete_data_set[i]
        y_value = interpolate(x_value, previous_coords, next_coords)

        incomplete_data_set.insert(i, [x_value, y_value])
      end
    end
  end

  incomplete_data_sets
end

def interpolate(x_value, previous_coords, next_coords)
  previous_coords[1] + (x_value - previous_coords[0]) * (next_coords[1] - previous_coords[1]) / (next_coords[0] - previous_coords[0])
end
