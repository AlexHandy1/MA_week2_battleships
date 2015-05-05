require 'Board'

feature 'ship positioned on board' do
  let (:board) {Board.new}
  let (:ship) {Ship.new}
  scenario 'ship is on the board' do
    board.place ship
    expect(board.ships.count).to eq 1
  end

  scenario 'board to check ship position' do
    ship = Ship.new "E4"
    board.place ship
    expect(board.check_grid ship).to eq "taken" #to_be taken?
  end
end
