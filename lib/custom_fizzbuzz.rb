class CustomBuzz

  def initialize(string1 = 'fizz', string2 = 'buzz', num1 = 3, num2 = 5)
    @string1 = string1
    @string2 = string2
    @num1 = num1
    @num2 = num2
  end

  def says(num)
    return @string1+@string2 if divides_by?(num, @num1) && divides_by?(num, @num2)
    return @string1 if divides_by?(num, @num1)
    return @string2 if divides_by?(num, @num2)
    return num
  end

  def divides_by?(number, divisor)
    number % divisor == 0
  end

end