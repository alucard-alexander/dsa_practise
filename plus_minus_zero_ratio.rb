def plusMinus(arr)
  # Write your code here
  positive_count = 0
  negative_count = 0
  zero_count = 0
  arr.each do |elem|
    if elem.positive?
      positive_count += 1
      next
    end
    if elem.negative?
      negative_count += 1
      next
    end
    zero_count += 1
  end
  printf("%.6f\n", (positive_count.to_f / arr.length))
  printf("%.6f\n", (negative_count.to_f / arr.length))
  printf("%.6f\n", (zero_count.to_f / arr.length))
end

plusMinus([1, 1, 0, -1, -1])
