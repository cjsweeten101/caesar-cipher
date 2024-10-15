def caesar_cipher(input_string, key)
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
  alphabet = ("a".."z").to_a
  new_index = alphabet.find_index(letter) + key % alphabet.length
  alphabet[new_index]
end

p caesar_cipher("Caesar is Ciphering", 27)