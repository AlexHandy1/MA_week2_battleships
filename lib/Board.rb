require_relative 'Ship'

class Board
  attr_accessor :ship_objects
  attr_reader :grid
  attr_reader :ship_coords
  attr_reader :guesses

  def initialize(size = 10)
    @ship_objects = []
    @grid = Array.new(size){|array|Array.new(size)}

    @ship_coords = []
    @guesses = []
  end

  def place ship
    @ship_objects << ship
    @ship_coords << ship.position

    row, col = converter ship.position
    grid[row][col] = "ship"
  end

  def fire ship_position
    row, col = converter ship_position

    if grid[row][col] == "ship"
       puts "OUCH!"
       grid[row][col] = "hit"
       ship.is_hit #doesn't link to actual ship object - how get to link
    elsif  grid[row][col] == nil
       puts "MISSED"
       grid[row][col] = "X"
       guesses << ship_position
    else
       puts "Already guessed here"
    end
  end

  def check_position ship_position
    row, col = converter ship_position
    print grid[row][col]
  end

  def converter ship_position
    alphabet = ('a'...'z').to_a
    row,col = ship_position.downcase.chars
    coords = alphabet.index(row), col.to_i-1
  end
end