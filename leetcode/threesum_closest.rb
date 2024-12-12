def three_sum_closest(nums, target)
    if nums.length == 3
        return nums[0] + nums[1] + nums[2]
    end
    nums.sort!
    closest = nil
    (0...nums.length - 2).each do |i|
        j = i + 1
        k = nums.length - 1
        while j < k
            sum = nums[i] + nums[j] + nums[k]
            diff = (target - sum).abs
            closest_diff = closest.nil? ? 0 : (target - closest).abs
            if closest.nil? || diff < closest_diff
                closest = sum
            end
            if sum < target
                j += 1
            else
                k -= 1
            end
        end
    end
    closest
end
