class PalindromicStrings < String

  def palindrome?(string)
    true if string.length == 1
    if are_you_all_symbols?(string)
      letters_array = string.chars
    else
      letters_array = string.gsub(/[^A-Za-z0-9]/, '').downcase.chars
    end
    letters_array.length/2.times do
      letters_array.slice!(0) && letters_array.slice!(-1) if letters_array.first == letters_array.last
    end
    (letters_array.first == letters_array.last) && letters_array.length < string.length ? true : false
  end

  def are_you_all_symbols?(string)
    string.chars.all? {|character| character =~ /[^A-Za-z0-9]/ }
  end

end