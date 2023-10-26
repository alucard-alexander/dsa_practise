def rotate(nums, k)
  nums[(k + 1)..] + nums[0..k]
end

p rotate([1, 2, 3, 4, 5, 6, 7], 3)