# "THE QUICK BROWN FOX"

# PSEUDO-CODE
# 0. build an array with A-Z
# 1. split into individual letter, get an array, store in var
# 2. iterate over the letters, use map
#   2.5 (Could deal with case sensitiveness)
#   3. Check if letter is A-Z
#   4. Get the 3-letter shifted letter (using the index)
#   5. Maybe deal with - indexes?
# 6. join 
# 7. return string of the encrypted msg

def encrypt(text, shift = -3)
  alphabet = ("A".."Z").to_a
  letters = text.split("")
  ciphered_letters = letters.map do |letter|
    if alphabet.include?(letter)
      letter_index = alphabet.index(letter)
      alphabet[letter_index + shift]
    else
      letter
    end
  end
  return ciphered_letters.join
end

def decrypt(text)
  encrypt(text, 3)
end