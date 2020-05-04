print "What do you want to send to Vodoun Daho?"
message = gets.chomp.to_s

print "Now let me know how to shift it?"
shift_num = gets.chomp.to_i

def caesar_cipher (message, shift_num=1)

    alphabet_low= ("a".."z").to_a
    alphabet_cap= ("A".."Z").to_a

    result = ""

    message.each_char do |car|
        if car == " "
            result += " "
        elsif 
            first_index = alphabet_low.find_index(car)
            last_index = (first_index + shift_num) % alphabet_low.length
            #new_car = alphabet[last_index]
            result += alphabet_low[last_index]
        else
            first_index = alphabet_cap.find_index(car)
            last_index = (first_index + shift_num) % alphabet_cap.length
            result += alphabet_cap[last_index]
        end
    end
    result 
end

print caesar_cipher(message, shift_num)
