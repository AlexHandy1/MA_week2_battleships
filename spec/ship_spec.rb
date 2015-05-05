require 'Ship'

describe Ship do
  it 'has a position' do
    ship = Ship.new "E4"
    expect(ship.position).to eq "E4"
  end
end
