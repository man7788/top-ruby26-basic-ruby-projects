dictionary = %w[below down go going horn how howdy it i low own part partner sit]

def substrings(string, dictionary)
  matches = Hash.new(0)
  lowercase_string = string.downcase

  dictionary.each do |word|
    lowercase_word = word.downcase
    matches[word] += 1 if lowercase_string.include?(lowercase_word)
  end

  matches
end

# p substrings('below', dictionary)
p substrings("Howdy partner, sit down! How's it going?", dictionary)
