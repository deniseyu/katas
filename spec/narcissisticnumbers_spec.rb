require 'narcissisticnumbers'

describe 'Nums' do

  let(:numba) { Numba.new }

  it '153 is true' do
    expect(numba.is_narcissistic?(153)).to eq true
  end

  it '1634 is true' do
    expect(numba.is_narcissistic?(1634)).to eq true
  end

  it '1 is true' do
    expect(numba.is_narcissistic?(1)).to eq true
  end

  it '24 is false' do
    expect(numba.is_narcissistic?(24)).to eq false
  end

  it '60000 is false' do
    expect(numba.is_narcissistic?(60000)).to eq false
  end

end