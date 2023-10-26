def sort_colors(nums)
  selected_element_index = 0
  while selected_element_index < nums.length
    lowest_element_index = selected_element_index
    nums[(selected_element_index + 1)...].each_with_index do |elem, index|
      lowest_element_index = (index + selected_element_index + 1) if nums[lowest_element_index] > elem
    end
    lowest_element = nums[lowest_element_index]
    nums[lowest_element_index] = nums[selected_element_index]
    nums[selected_element_index] = lowest_element
    selected_element_index += 1
  end
  nums
end

p sort_colors([2, 0, 2, 1, 1, 0])
