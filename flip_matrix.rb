def flippingMatrix(matrix)
  # Write your code here
  return matrix.flatten.sort[-4...].sum

end

puts flippingMatrix([
  [112, 42, 83, 119],
  [56, 125, 56, 49],
  [62, 98, 114, 108]
])