def pairs(n, arr)
  # Write your code here
  i = 0
  pair_count = 0
  mid = arr.length / 2
  while i < arr.length - 1
    j = i + 1
    k = mid
    l = mid + 1
    m = arr.length - 1
    while j <= k
      pair_count += 1 if (arr[i] - arr[j]).abs == n
      pair_count += 1 if j != k && (arr[i] - arr[k]).abs == n
      pair_count += 1 if (arr[i] - arr[l]).abs == n
      pair_count += 1 if l != m && arr[m] && (arr[i] - arr[m]).abs == n
      j += 1
      k -= 1
      l += 1
      m -= 1
    end
    i += 1
    mid = (i + arr.length) / 2
  end
  pair_count
end

p pairs(2, [1, 5, 3, 4, 2])
