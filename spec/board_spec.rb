require 'Board'

describe Board do
  it{is_expected.to respond_to :place}

  it "store ship positions in boards array" do
    ship = Ship.new "E4" #refactor to be double
    subject.place ship
    expect(subject.ship_coords).to eq [ship.position]
  end
end