def three_sum(nums)
    nums.sort!
    results = []
    (0...nums.length - 2).each do |i|
        if i > 0 && nums[i] == nums[i - 1]
            next
        end
        j = i + 1
        k = nums.length - 1
        while j < k
            sum = nums[i] + nums[j] + nums[k]
            if sum == 0
                results.push([nums[i],nums[j],nums[k]])
                j += 1
                k -= 1
            elsif sum > 0
                k -= 1
            else
                j += 1
            end
        end
    end
    results.uniq
end                  

# define i,j,k 0,mid,last respectively
# while the idicies do NOT overlap
    # find sum of three values
    # if the sum is too large
        # move the largest values
    # if the sum is too small
        # move the smallest value
