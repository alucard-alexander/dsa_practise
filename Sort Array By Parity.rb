def sort_array_by_parity(nums)
  even = []
  odd = []
  nums.each do |num|
    if num.odd?
      odd << num
    else
      even << num
    end
  end
  even
end

p sort_array_by_parity([3, 1, 2, 4])
