require 'Board'

feature 'ship positioned on board' do
  let (:board) {Board.new}
  let (:ship) {Ship.new}
  scenario 'ship is on the board' do
    ship = Ship.new "E4"
    board.place ship
    expect(board.ship_objects.count).to eq 1
  end

  scenario 'board to raise message hit if ship has been hit' do
    ship = Ship.new "E4"
    board.place ship
    expect(board.hit_checker "E4").to eq "OUCH"
  end

  scenario 'board to raise message missed when no ship in that position' do
    ship = Ship.new "E4"
    board.place ship
    expect(board.hit_checker "E5").to eq "MISSED"
  end
end
