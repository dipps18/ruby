# frozen_string_literal: true


def translate(string,number)
    array=string.split("").map do |letter| 
        shift=number.remainder(26)
        ascii=letter.ord
        #alters letters between A-Z and a-z only
        if ascii.between?(65,90) || ascii.between?(97,122) 
            #checks if the letter after positive shift are in their respectives ranges
            if ((ascii + shift > 122) || (ascii <= 90 && ascii + shift > 90))
                letter = ascii + shift - 26
            #checks if the letter after negative shift are in their respective ranges
            elsif((ascii >= 65 && ascii+shift < 65) || (ascii >= 97 && ascii + shift < 97))
                letter = ascii + shift + 26
            else
                letter = ascii + shift
            end
        end
        letter.chr
    end
    array.join
end

translate('Zz', 5)
translate("Ee",-5)
translate("Zz",83)
translate("Ee",-83)
translate('What a string!', 5)
translate('Hello, World!', 75)
translate('Hello, World!', -55)