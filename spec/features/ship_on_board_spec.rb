feature 'ship positioned on board' do
  scenario 'ship is on the board' do
    board = Board.new
    ship = Ship.new
    board.place ship
    expect(board.ships.count).to eq 1
  end
end
