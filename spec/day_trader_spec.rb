require_relative 'day_trader'

RSpec.describe '#day_trader' do
  it 'trouve les meilleurs jours pour acheter et vendre' do
    expect(day_trader([17, 3, 6, 9, 15, 8, 6, 1, 10])).to eq([1, 4]) # $15 - $3 = $12
  end

  it 'retourne nil si aucun profit possible' do
    expect(day_trader([10, 9, 8, 7, 6])).to eq(nil) # Les prix baissent chaque jour
  end

  it 'fonctionne avec un seul jour' do
    expect(day_trader([5])).to eq(nil) # Impossible de vendre sans deuxième jour
  end
end
