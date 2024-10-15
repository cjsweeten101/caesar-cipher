require "pry-byebug"

def caesar_cipher(input_string, key)
  alphabet = "abcdefghijklmnopqrstuvwxyz".split("")
  input_string.split("").map do |letter|
    if letter == " "
      " "
    else 
      was_caps = false
      if letter == letter.upcase
        was_caps = true
        letter.downcase!
      end
      new_letter = find_new_letter(letter, key)
      was_caps ? new_letter.upcase : new_letter
    end
  end.join
end

def find_new_letter(letter, key)
  alphabet = "abcdefghijklmnopqrstuvwxyz".split("")
  new_index = alphabet.find_index(letter) + key
  while new_index >= alphabet.length
    new_index -= alphabet.length
  end
  alphabet[new_index]

end

p caesar_cipher("Caesar is Ciphering", 65)