def cookies(k, a)
  # Write your code here
  iterations = 0
  while checkSweetness(k, a) && a.length > 1
    min = a.min
    if index = a.index(min)
      a.delete_at(index)
    end
    # a.delete(min)
    min2 = a.min
    if index = a.index(min2)
      a.delete_at(index)
    end
    sweetness = min + 2 * min2
    a.unshift(sweetness)
    iterations += 1
  end
  return -1 if a.length == 1 && a[0] < k

  iterations
end

def checkSweetness(k, a)
  a.each do |elem|
    return true if elem < k
  end
  false
end

p cookies(10, [1, 1, 1])
# a.delete(a.find { |item| item == 3 })
