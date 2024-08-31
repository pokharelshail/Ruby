def substring_count(string, list_of_strings)
  substring_counts = {}
  list_of_strings.each do |word|
    count =  string.downcase.scan(word.downcase).length
    substring_counts[word] = count
  end
  substring_counts
end

print(substring_count("wa wa wa han b b ba ba suu han han ma bbb", ["han","su","ma","ba","muah"]))