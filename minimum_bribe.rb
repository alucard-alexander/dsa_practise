def minimumBribes(q)
  # Write your code here
  bribe_count = 0
  len = q.length
  i = 0
  p1 = 1
  p2 = 2
  p3 = 3
  while i < len - 1
    if q[i] == p1
      p1 = p2
      p2 = p3
      p3 += 1
    elsif q[i] == p2
      bribe_count += 1
      p2 = p3
      p3 += 1
    elsif q[i] == p3
      bribe_count += 2
      p3 += 1
    else
      puts 'Too chaotic'
      return
    end
    i += 1
  end
  puts bribe_count
end

minimumBribes([2, 1, 5, 3, 4])
