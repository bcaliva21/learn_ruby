def majority_element(nums)
  threshold = nums.length / 3
  hash = {}
  result = []

  nums.each do |v|
    if hash.has_key?(v)
      hash[v] += 1
    else
      hash[v] = 1
    end
  end

  hash.each do |k,v|
    if v > threshold
      result.push k
    end
  end

  result
end

print majority_element [3,2,3]
print majority_element [1,2]
print majority_element [1]

# Given an integer array of size n, find all elements that appear more than ⌊ n/3 ⌋ times.

# Example 1:

# Input: nums = [3,2,3]
# Output: [3]
# Example 2:

# Input: nums = [1]
# Output: [1]
# Example 3:

# Input: nums = [1,2]
# Output: [1,2]
