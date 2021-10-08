# frozen_string_literal: true

def substrings(string, dictionary)
  result = Hash.new(0)
  string_lower = string.downcase

  dictionary.filter_map do |element|
    element_lower = element.downcase
    result[element_lower] = string_lower.scan(element_lower).length if string_lower.include?(element_lower)
  end
  result
end

dictionary = %w[below down go going horn how howdy it i low own part partner sit]
substrings('below', dictionary)
substrings("Howdy partner, sit down! How's it going?", dictionary)
