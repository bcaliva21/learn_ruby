def find_lhs(nums)
  long = 0
  last = nums.length - 1
  beg = 0

  while beg < last do
    if last - beg < long
      return long
    end
    if (nums[last] - nums[beg]).abs <= 1
      search = beg + 1
      while search < last do
        subtract = 0
        valid = false
        if search + 1 == last
          count = last - beg - subtract + 1
          if count > long && valid
            long = count
          end
          beg += 1
          last = nums.length - 1
          break
        end
        if (nums[search] - nums[beg]).abs > 1
          subtract += 1
        elsif (nums[search] - nums[beg]).abs == 1
          valid = true
        end
        if search == beg + 1
          if (nums[last] - nums[beg]).abs == 1
            valid = true
            long = 1
          end
        end
        search += 1
      end
    elsif
      last -= 1
    end
  end

  long
end

puts find_lhs([1,3,2,2,5,2,3,7])

#                  b     x s l
# Input: nums = [1,3,2,2,5,2,3,7]

# Output: 5

# Explanation:

# The longest harmonious subsequence is [3,2,2,2,3].
