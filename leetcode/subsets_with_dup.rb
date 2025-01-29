def subsets_with_dup(nums)
  result = [[]]
  helper(nums, 0, [], result)
  result
end

def helper(nums, index, slate, result)
  return if index > nums.length - 1

  (index...nums.length).each do |i|
    slate.push(nums[i])
    unless result.include?(slate)
      result.push(slate.clone)
    end
    helper(nums, i+1, slate, result)
    slate.pop
  end
end

print subsets_with_dup([1,2,2])
# [[],[1],[2],[2]]
# Input: nums = [1,2,2]
# Output: [[],[1],[1,2],[1,2,2],[2],[2,2]]
