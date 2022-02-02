def caesar_cipher (string, shift)
  if !shift.between?(-26, 26)
    adjusted_shift = shift.remainder(26)
  else
    adjusted_shift = shift
  end
  lowercase = ("a".."z").to_a
  uppercase = ("A".."Z").to_a
  result = ""
  string.split("").each do |c|
    if lowercase.include?(c)
      result << lowercase[(lowercase.index(c) + shift) % 26]
    elsif uppercase.include?(c)
      result << uppercase[(uppercase.index(c) + shift) % 26]
    else
      result << c
    end
  end
  result
end