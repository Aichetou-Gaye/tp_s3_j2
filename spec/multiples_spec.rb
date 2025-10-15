# frozen_string_literal: true

require_relative '../lib/multiples'

describe 'the is_multiple_of_3_or_5? method' do
  it 'should return TRUE when an integer is a multiple of 3 or 5' do
    expect(is_multiple_of_3_or_5?(3)).to eq(true)

    expect(is_multiple_of_3_or_5?(5)).to eq(true)

    expect(is_multiple_of_3_or_5?(51)).to eq(true)

    expect(is_multiple_of_3_or_5?(45)).to eq(true)
  end

  it 'should return FALSE when an integer is NOT a multiple of 3 or 5' do
    expect(is_multiple_of_3_or_5?(7)).to eq(false)

    expect(is_multiple_of_3_or_5?(11)).to eq(false)

    expect(is_multiple_of_3_or_5?(17)).to eq(false)

    expect(is_multiple_of_3_or_5?(22)).to eq(false)
  end
end

describe 'the sum of multiple of 3 or 5? method' do 
  it 'should return the result' do
    expect(sum_of_3_or_5_multiples(10)).to eq(23)
    expect(sum_of_3_or_5_multiples(11)).to eq(33)
  end

# Aichetou le code a fonctionner

  it 'should refuses the entry of the user' do
    expect(sum_of_3_or_5_multiples(-1)).to eq(0)
    expect(sum_of_3_or_5_multiples(11)).to eq(33)
  end
end
