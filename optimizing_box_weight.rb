def minimalHeaviestSetA(arr)
  sort_array = arr.sort { |a, b| b <=> a }
  a = []

  sort_array.each_with_index do |sort_element, index|
    if a.empty?
      a << sort_element
      next
    end
    a.unshift(sort_element)
    break if a.sum > sort_array[index + 1..].sum
  end
  a
end

p minimalHeaviestSetA([5, 3, 2, 4, 1, 2])

# fptr = File.open(ENV['OUTPUT_PATH'], 'w')
