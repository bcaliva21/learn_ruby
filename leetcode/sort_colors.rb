def sort_colors(nums)
  low = 0
  high = nums.length - 1
  i = 0
  
  while i <= high
    if nums[i] == 0
      nums[i], nums[low] = nums[low], nums[i]
      low += 1
      i += 1
    elsif nums[i] == 2
      nums[i], nums[high] = nums[high], nums[i]
      high -=1
    else
      i += 1
    end
  end
end

print sort_colors [2,0,2,1,1,0]
print sort_colors [2,0,1,0]
print sort_colors [2,1,0]
print sort_colors [1,0,1]

#                l         h
# Input: nums = [0,0,1,1,2,2]
# Output: [0,0,1,1,2,2]
