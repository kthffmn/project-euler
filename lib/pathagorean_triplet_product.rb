def pathagorean_triplet_product(sum)
  pathagorean_triplets(sum).reduce(:*)
end

def pathagorean_triplets(sum)
  (1...sum).each do |a|
    (a...sum).each do |b|
      c = sum - a - b
      return [a,b,c] if (a  ** 2) + (b  ** 2) == c ** 2
    end
  end
end