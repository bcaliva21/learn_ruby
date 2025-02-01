# @param {String} s
# @return {Integer}
#
# Implement the myAtoi(string s) function, which converts a string to a 32-bit signed integer.

# The algorithm for myAtoi(string s) is as follows:

# Whitespace: Ignore any leading whitespace (" ").
# Signedness: Determine the sign by checking if the next character is '-' or '+', assuming positivity if neither present.
# Conversion: Read the integer by skipping leading zeros until a non-digit character is encountered or the end of the string is reached. If no digits were read, then the result is 0.
# Rounding: If the integer is out of the 32-bit signed integer range [-231, 231 - 1], then round the integer to remain in the range. Specifically, integers less than -231 should be rounded to -231, and integers greater than 231 - 1 should be rounded to 231 - 1.
# Return the integer as the final result.
#
# "-042"
#
#
def removeZeros(s,ptr)
  while s[ptr] == "0"
    ptr += 1
  end
    ptr
end

def is_num?(str)
  !!Integer(str)
rescue ArgumentError, TypeError
  false
end

def my_atoi(s)
  s.strip!

  if s == ""
    return 0
  end

  if s[0] == "0" && !is_num?(s[1])
    return 0
  end

  if s[0] == "-"
    ptr = 1
    ptr = removeZeros(s,ptr)
    num = ""

    while is_num?(s[ptr])
      num += s[ptr]
      ptr += 1
    end
    if !is_num?(num)
      return 0
    end
    num = Integer(num)
    low = -2 ** 31

    if -num < low
      return -2 ** 31
    else
      return -num
    end
  else
    ptr = 0
    if s[ptr] == "+"
      ptr += 1
    end

    ptr = removeZeros(s,ptr)
    num = ""


    while is_num?(s[ptr])
      num += s[ptr]
      ptr += 1
    end
    if !is_num?(num)
      return 0
    end

    num = Integer(num)

    high = 2 ** 31 - 1

    if num > high
      return high
    else
      return num
    end
  end
  return 0
end

# puts my_atoi("42")
# puts my_atoi("-042")
# puts my_atoi("1337c03d")
# puts my_atoi("words and 937")
# puts my_atoi("0+1")
# puts my_atoi("-8882147483648")
puts my_atoi("+1")
