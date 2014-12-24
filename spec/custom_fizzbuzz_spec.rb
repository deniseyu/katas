# If no arguments are passed the value at the index of the array for number should be 'Fizz' if it is divisible by 3, 'Buzz' if divisible by 5, 'FizzBuzz' if it divisible by both 3 and 5, or the number if it is not divisible by 3 or 5.

# The method should take up to 4 arguments:

# The first and second arguments are strings, which should be 'Fizz' and 'Buzz' by default.

# The third and fourth arguments are integers and and should be 3 and 5 by default.

require 'custom_fizzbuzz'

describe 'CustomBuzz' do

  context 'by default, says fizz on multiples of 3, buzz on 5, fizzbuzz on 15' do

    let(:custombuzz) { CustomBuzz.new}

    it 'says fizz on 3' do
      expect(custombuzz.says(3)).to eq 'fizz'
    end

    it 'says buzz on 5' do
      expect(custombuzz.says(5)).to eq 'buzz'
    end

    it 'says fizzbuzz on 15' do
      expect(custombuzz.says(15)).to eq 'fizzbuzz'
    end

    it 'says the number otherwise' do
      expect(custombuzz.says(7)).to eq 7
    end

  end

  context 'says panda on multiples of 3, pop on 7, pandapop on 21' do

    let(:custombuzz) { CustomBuzz.new('panda', 'pop', 3, 7)}

    it 'says panda on 6' do
      expect(custombuzz.says(3)).to eq 'panda'
    end

    it 'says pop on 49' do
      expect(custombuzz.says(49)).to eq 'pop'
    end

    it 'says pandapop on 147' do
      expect(custombuzz.says(147)).to eq 'pandapop'
    end

    it 'says the number otherwise' do
      expect(custombuzz.says(17)).to eq 17
    end

  end

end