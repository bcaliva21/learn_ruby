def combination_sum2(candidates, target)
  results = []
  candidates.sort!
  helper(0, candidates, target, [], results)
  results.uniq
end

def helper(index, candidates, target, slate, results)
  if target == 0
    results.push(slate.clone)
    return
  end

  (index...candidates.length).each do |i|
    if candidates[i] <= target
      slate.push(candidates[i])
      helper(i+1, candidates, target - candidates[i], slate, results)
      slate.pop()
    end
  end
end

print combination_sum2([10,1,2,7,6,1,5],8)
puts ""
print combination_sum2([1,1,1,1,1,1,1],8)
puts ""
print combination_sum2([1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1],27)

# Input: candidates = [10,1,2,7,6,1,5], target = 8
# Input: candidates = [1,1,2,5,6,7,10], target = 8
# Output: 
# [
# [1,1,6],
# [1,2,5],
# [1,7],
# [2,6]
# ]
