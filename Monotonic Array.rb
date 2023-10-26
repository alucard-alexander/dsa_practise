# @param {Integer[]} nums
# @return {Boolean}
def is_monotonic(nums)
  length = nums.length

  check_monotone_increasing(nums, length)
end

def check_monotone_increasing(nums, length)
  (length - 1).times do |i|
    # p nums[i], nums[i + 1]
    return check_monotone_decreasing(nums, length) if nums[i] > nums[i + 1]
  end
  true
end

def check_monotone_decreasing(nums, length)
  (length - 1).times do |i|
    p nums[i], nums[i + 1]
    return false if nums[i] < nums[i + 1]
  end
  true
end

p is_monotonic([1, 3, 2])

# def check_monotone_increasing1(nums, length)
#   (1...length - 2).each do |i|
#     p nums[i] > nums[i + 1]
#     p nums[i]
#     p nums[i + 1]
# 		p '================='
#   end
#   # p true
# end
# check_monotone_increasing1([1, 2, 2, 3], 4)
