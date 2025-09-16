def caesar_cipher(string, shift)
  lowercase = ('a'..'z').to_a
  uppercase = ('A'..'Z').to_a

  string.chars.map do |char|
    if lowercase.include?(char)
      lowercase[(lowercase.index(char) + shift) % 26]
    elsif uppercase.include?(char)
      uppercase[(uppercase.index(char) + shift) % 26]
    else
      char
    end
  end.join
end

puts caesar_cipher("What a string!", 5)
