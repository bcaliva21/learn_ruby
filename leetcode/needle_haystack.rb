def str_str(haystack, needle)
    result = haystack.index(needle)
    if result.nil?
        result = -1
    end
    result
end

puts str_str("sadbutsad", "sad")
