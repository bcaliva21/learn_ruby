def combination_sum(candidates, target)
  results = []
  helper(0,target,[],results,candidates)
  results
end

def helper(index, target, slate, results, candidates)
  if target == 0
    results.push(slate.clone)
    return
  end

  (index...candidates.length).each do |i|
    if candidates[i] <= target
      slate.push(candidates[i])
      helper(i, target - candidates[i], slate, results, candidates)

      slate.pop
    end
  end
end

print combination_sum([2,3,6,7],7)


# helper(0,[2],5,[])
# helper(1,[],7,[])
# helper(0,[2,2],3,[])
# helper(0,[2,2,3],1,[])

# Input: candidates = [2,3,6,7], target = 7
# Output: [[2,2,3],[7]]
#
# 2, [2,3,6,7], 7
# 
# remainder = target - candidate 
#   if remainder gt 0
#     push to slate
#     call helper
#     remove from slate
#   if remainder lt 0
#     this slate is bricked
#     i think we can return
#   if remainder eq 0
#     push to slate
#     we're done here
#
#
