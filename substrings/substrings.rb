def substrings(string,dictionary)
    result = Hash.new(0)
    string.downcase!
    
    dictionary.map do |element|
        element.downcase!
        result[element]=(string.scan(element).length) if(string.include?(element))
        result[element] unless result[element]==nil
    end
    result
end

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
substrings("below", dictionary)
substrings("Howdy partner, sit down! How's it going?", dictionary)
            