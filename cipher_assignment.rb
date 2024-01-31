
def caesar_cipher(string, number)
    #defining the array of alphabet
    string_of_alphabet = "abcdefghijklmnopqrstuvwxyz"
    array_of_string = string_of_alphabet.split("")
    string_array = string.split("")
    length = string_array.length
    until length == 0
        new_array = string_array.map do |character|
            indexs = array_of_string.index(character.downcase)

            if indexs.nil?
                character
            else
            indexs = (indexs + number)%26
            cipher_character = array_of_string[indexs]
                if character == character.upcase
                    cipher_character.upcase
                else
                    cipher_character
                end    
            end  
        end
        length = length-1 
    end
    puts new_array.join("")
end

caesar_cipher("Hello worRld", 100)
caesar_cipher("Hello worRld", 70)
