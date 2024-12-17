def distribute_candies(candy_type)
  maxAmount = (candy_type.length) / 2
  uniques = candy_type.uniq

  if uniques.length > maxAmount
    return maxAmount
  else
    return uniques.length
  end
end

# [1,1,2,2,3,3] output = 3
