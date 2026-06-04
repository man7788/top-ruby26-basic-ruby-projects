def caesar_cipher(string, r_shift = 0)
  lowercase = %w[a b c d e f g h i j k l m n o p q r s t u
                 v w x y z]
  uppercase = lowercase.map(&:upcase)

  ciphered_array = string.chars.map do |char|
    if char == ' '
      ' '
    elsif char == char.downcase
      lowercase[(lowercase.index(char) + r_shift) % 26]
    else
      uppercase[(uppercase.index(char) + r_shift) % 26]
    end
  end

  ciphered_array.join
end

p caesar_cipher('John Doe', 10)
