def merge_sort(arr)
  return arr if arr.length <= 1

  middle = arr.length / 2
  left_half = arr[0...middle]
  right_half = arr[middle..-1]

  left_half = merge_sort(left_half)
  right_half = merge_sort(right_half)

  merge(left_half, right_half)
end

def merge(left, right)
  result = []
  left_index = 0
  right_index = 0

  while left_index < left.length && right_index < right.length
    if left[left_index] < right[right_index]
      result << left[left_index]
      left_index += 1
    else
      result << right[right_index]
      right_index += 1
    end
  end

  result += left[left_index..-1]
  result += right[right_index..-1]

  result
end

# Example usage:
arr = [38, 27, 43, 3, 9, 82, 10]
sorted_arr = merge_sort(arr)
puts "Sorted Array: #{sorted_arr}"
