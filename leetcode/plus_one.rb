def plus_one(digits)
  digits.reverse!

  digits.each_with_index do |v,i|
    incremented_value = v + 1
    if incremented_value > 9
      if i == digits.length - 1
        digits.push(1)
        digits[i] = 0
        break
      end

      digits[i] = 0
    else
      digits[i] = incremented_value
      break
    end
  end

  digits.reverse
end

print plus_one([1,2,3])
print plus_one([9,9,9])
print plus_one([9])
print plus_one([1,2,3,4])

# is digits[i] + 1 gt 9?
#   no?
#     increment it and we're done
#   yes?
#     does i eq 0?
#       carry = true
#       break loop
#     set it to 0 -- continue the loop
#     repeat the above steps
#
# if carry
#   true
#     shift 1 onto array
#
# return digits
#                      i
# Input: digits = [1,2,3]
# Output: [1,2,4]
#
#                      
# scratch: digits = [9,0]
# Input: digits = [8,9]
# Output: [1,0,0,0,0]
