def diagonalDifference(arr)
  # Write your code here
  len = arr.length
  j = len - 1
  primary_diagonal_sum = 0
  secondary_diagonal_sum = 0
  for i in 0...len
    primary_diagonal_sum += arr[i][i]
    secondary_diagonal_sum += arr[j][i]
    p arr[i][i]
    p arr[j][j]
    j -= 1
  end
  (primary_diagonal_sum - secondary_diagonal_sum).abs
end
p diagonalDifference([[11, 2, 4], [4, 5, 6], [10, 8, -12]])
