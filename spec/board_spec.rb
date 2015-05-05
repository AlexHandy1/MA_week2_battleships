require 'Board'

describe Board do
  it{is_expected.to respond_to :place}

  it "store ship positions in boards array" do
    ship = Ship.new "E4" #refactor to be double
    subject.place ship
    expect(subject.ship_coords).to eq [ship.position]
  end

  xit "converts a ship position into coordinates" do
    ship = Ship.new "E4"
    subject.convert ship
    expect(subject.ship.position).to eq [4][4]
  end

  it "replaces ship position with a ship placeholder" do
    ship = Ship.new "E4"
    subject.place ship
    expect(subject.grid[4][4]).to eq "ship"
  end

  it "replaces an element with an X when fired" do
    ship = Ship.new "E4"
    subject.fire ship
    expect(subject.grid[4][4]).to eq "X"
  end
end