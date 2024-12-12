def two_sum(nums, target)
    hash = {}
    arr = []
    nums.each_with_index do |num, idx| 
      if hash.key?(num)
        arr.push(hash[num])
        arr.push(idx)
        break
      end
      # hash[num] is gt -1, we have found the answer
      key = target - num
      puts key
      hash[key] = idx
    end

    arr
end

two_sum([-1,-2,-3,-4,-5], -8)
