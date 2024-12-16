def search_insert(nums, target)
# find middle index
# create first and last index
found = -1
beg = 0
last = nums.length - 1
mid = (last + beg)/2.floor
  loop do
    if nums[mid] == target
      found = mid
      break
    elsif nums[mid] > target
      if mid == beg
        found = mid
        break
      end
      last = mid
      mid = (last + beg)/2.floor
    elsif nums[mid] < target
      if mid == last
        found = last + 1
        break
      end
      beg = mid + 1
      mid = (last + beg)/2.floor
    end
  end
  found
end

#   b                         
#   l
#   m 
#[1,3,5,6] target = 2
#                     b l
#                       m 
#                       b
#  Input: nums = [1,3,5,6], target = 7
#  Output: 2
#
#                         l
#                         b
#                         m
#  Input: nums = [1,3,6,7,8], target = 15
#  Output: 2
#
#                 b l     
#                 m
#  Input: nums = [1,3,5,7,8], target = 0
#  Output: 2
