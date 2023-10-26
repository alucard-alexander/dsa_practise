def mod(n)
  n % (1_000_000_000 + 7)
end

def legoBlocks(n, m)
  # Write your code here
  k = [0, 1, 2, 4, 8]
  if m > 4
    for i in 5..m
      k[i] = k[i - 1] + k[i - 2] + k[i - 3] + k[i - 4]
    end
  end
  bad_blocks = [0, 1]

  for i in 2..m
    p 'sdfsdfsdf'

    # bad_blocks[i + 1] =
    summation = 0
    for j in 1...i
      # p "#{bad_blocks[j]}x#{k[i - j]}"
      summation += bad_blocks[j] * (k[i - j]**n)
    end
    # p summation
    bad_blocks[i] = (k[i]**n) - summation
  end
  p bad_blocks
  p mod(bad_blocks[m])
end

legoBlocks(3, 2)
