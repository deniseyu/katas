require 'palindrome'

describe 'PalindromicStrings' do

  let(:palindrome) { PalindromicStrings.new }

  it 'should return true for palindromic letters' do
    newstring = 'A man, a plan, a canal: Panama'
    expect(palindrome.palindrome?(newstring)).to eq true
  end

  it 'should work for short palindromes' do
    newstring = 'aha'
    expect(palindrome.palindrome?(newstring)).to eq true
  end

  it 'really short palindromes' do
    newstring = 'a'
    expect(palindrome.palindrome?(newstring)).to eq true
  end

  it 'even numbered palindromes' do
    newstring = 'ahha'
    expect(palindrome.palindrome?(newstring)).to eq true
  end

  it 'palindromes of only symbols' do
    newstring = '@&##&@'
    expect(palindrome.palindrome?(newstring)).to eq true
  end

  it 'should return false for non-palindromes' do
    newstring = 'I like bananas'
    expect(palindrome.palindrome?(newstring)).to eq false
  end

end