def merge(nums1, m, nums2, n)
  if m == 0
    nums2.each_with_index { |v,i| nums1[i] = v }
    return
  end
  if n == 0
    return
  end

  nums2.each_with_index do |v,i|
    nums1[m + i] = v
  end

  nums1.sort!
end

print merge([1,5,6,0,0,0], 3, [2,2,3],3)

# print merge([1,5,6,0,0,0], 3, [2,2,3],3)
# print merge([1,2,6,0,0,0], 3, [5,2,3],3)
#
# iterate through nums1
#  is nums1[i] gt nums2[j]
#    yes
#      swap them
#  is nums1[i] eq 0
#    make sure nums2 is sorted
#    gather the rest of nums2 and replace the leftover zeros
#      
#
#
# Input: nums1 = [1,2,2,3,0,0,0], m = 4, nums2 = [4,5,6], n = 3
# Output: [1,2,2,3,5,6]
#
#
# scratch: nums1 = [1,2,5,0,0,0], m = 3, nums2 = [3,4,6], n = 3
# Input: nums1 = [1,3,5,0,0,0], m = 3, nums2 = [2,4,6], n = 3
# Output: [1,2,2,3,5,6]
