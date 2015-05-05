require 'Board'

describe Board do
  it{is_expected.to respond_to :place}
  it{is_expected.to respond_to :fire}

  it "store ship positions in boards array" do
    ship = Ship.new "E5" #refactor to be double
    subject.place ship
    expect(subject.ship_coords).to eq [ship.position]
  end

  xit "converts a ship position into coordinates" do
    ship = Ship.new "E5"
    subject.convert ship
    expect(subject.ship.position).to eq [4][4]
  end

  it "replaces ship position with a ship placeholder" do
    ship = Ship.new "E5"
    subject.place ship
    expect(subject.grid[4][4]).to eq "ship"
  end

  it "replaces an element with an X when fired" do
    ship = Ship.new "E5"
    subject.fire ship.position
    expect(subject.grid[4][4]).to eq "X"
  end
end