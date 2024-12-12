def max_area(height)
  max = 0
  i = 0
  j = height.length - 1
  while i < j 
    width = j - i
    min = [height[i],height[j]].min
    volume = width * min
    max = [max,volume].max

    if height[i] < height[j]
      i = i + 1
    else
      j = j - 1
    end
  end

  max
end

puts max_area([1,8,6,2,5,4,8,3,7])

# find min: the smaller value between height[x]/height[y]
# find width: y-x
# find volume: width * min
# if volume is GT max, set max to volume
# inc/dec the smaller value?
