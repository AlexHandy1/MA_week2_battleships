require 'Player'

feature 'Player plays Battleships' do

  scenario 'Places a ship and report position'do
    player = Player.new (Board.new)
    player.board.place Ship.new "E4"
    expect(player.board.ship_coords).to eq ["E4"]
  end

  xscenario 'gets hit,ship is sunk and loses' do
  end

end