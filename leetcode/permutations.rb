def permute(nums)
  result = []
  helper(nums, result, [], 0)
  result
end

def helper(nums, result, slate, index) 
  if slate.length == nums.length
    result.push(slate.clone)
    return
  end

  (index...nums.length).each do |i|
    slate.push(nums[i]) # [2]
    helper(nums, result, slate, i+1)
    slate.pop
    helper(nums, result, slate, i+1)
    slate.pop
  end

end

print permute([1,2,3])

# 
# Input: nums = [1,2,3]
# Output: [[1,2,3],[1,3,2],[2,1,3],[2,3,1],[3,1,2],[3,2,1]]
# [1]
# [1,2]
# [1,2,3]
# [1,3]
# [2]
# [3]
