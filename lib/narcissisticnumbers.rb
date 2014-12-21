class Numba

  def is_narcissistic?(number)
    digits_as_array = number.to_s.chars.map {|char| char.to_i }
    digits_as_array.map!{|num| num ** number.to_s.length }
    digits_as_array.inject(:+) == number ? true : false
  end

end