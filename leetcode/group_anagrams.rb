def group_anagrams(strs)
   hash = {} 
   result = []

   strs.each do |word|
     sorted = word.chars.sort.join
     if hash.has_key?(sorted)
       hash[sorted].push(word)
     else
       hash[sorted] = [word]
     end
   end

   hash.each do |k,v|
     result.push(v)
   end

   result
end

print group_anagrams ["eat","tea","tan","ate","nat","bat"]


# hash - {
#   "ate" : ["eat, "tea", "ate"]
#   "ant" : ["tan", "nat"]
#   "abt" : ["bat"]
# }
# Input: strs = ["eat","tea","tan","ate","nat","bat"]
# Output: [["bat"],["nat","tan"],["ate","eat","tea"]]
