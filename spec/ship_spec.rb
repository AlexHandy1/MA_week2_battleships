require 'Ship'

describe Ship do
  it 'has a position' do
    ship = Ship.new "E4"
    expect(ship.position).to eq "E4"
  end

  it 'when created it is floating' do
  ship = Ship.new
    expect(ship).to be_floating
  end

  it 'can be sunk' do
    ship = Ship.new
    ship.is_sunk
    expect(ship).to be_sunk
  end

  it 'can be hit' do
    ship = Ship.new
    expect(ship.is_hit).to eq 1
  end
end
