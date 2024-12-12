def length_of_last_word(s)
  words = s.split
  last_index = words.length - 1
  words[last_index].length
end
