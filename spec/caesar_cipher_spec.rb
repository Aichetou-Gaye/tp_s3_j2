require_relative '../lib/caesar_cipher'

describe 'this is cesar cipher' do
  it 'should cipher sentence' do
    expect(caesar_cipher('helohalo', 5)).to eq('mjqtmfqt')
    expect(caesar_cipher('parfaitement', 5)).to eq('ufwkfnyjrjsy')
    expect(caesar_cipher('Des Choses Bizarres!', 5)).to eq('Ijx Hmtxjx Gnefwwjx!')
    expect(caesar_cipher('Ton code est secret?', 5)).to eq('Yts hsdj jxy xjhwjy?')
  end
end
