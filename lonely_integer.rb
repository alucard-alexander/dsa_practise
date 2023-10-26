def lonelyinteger(a)
  # Write your code here
  occurence_count = {}
  a.each do |elem|
    if occurence_count.key?(elem)
      occurence_count[elem] += 1
    else
      occurence_count[elem] = 1
    end
  end
  occurence_count.find { |k, v| v == 1 }&.first
end


p lonelyinteger([1, 2, 3, 3, 2, 1, 4])