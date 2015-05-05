require_relative 'Ship'

class Board
  attr_accessor :ship_objects
  attr_reader :grid
  attr_reader :ship_coords

  def initialize
    @ship_objects = []
    @grid = [["A0","B0", "C0", "D0", "E0", "F0", "G0", "H0", "I0", "J0"],
                  ["A1","B1", "C1", "D1", "E1", "F1", "G1", "H1", "I1", "J1"],
                  ["A2","B2", "C2", "D2", "E2", "F2", "G2", "H2", "I2", "J2"],
                  ["A3","B3", "C3", "D3", "E3", "F3", "G3", "H3", "I3", "J3"],
                  ["A4","B4", "C4", "D4", "E4", "F4", "G4", "H4", "I4", "J4"],
                  ["A5","B5", "C5", "D5", "E5", "F5", "G5", "H5", "I5", "J5"],
                  ["A6","B6", "C6", "D6", "E6", "F6", "G6", "H6", "I6", "J6"],
                  ["A7","B7", "C7", "D7", "E7", "F7", "G7", "H7", "I7", "J7"],
                  ["A8","B8", "C8", "D8", "E8", "F8", "G8", "H8", "I8", "J8"],
                  ["A9","B9", "C9", "D9", "E9", "F9", "G9", "H9", "I9", "J9"]]
    @ship_coords = []
    @guesses = []
    @hits = 0
  end

  def place ship
    @ship_objects << ship
    @ship_coords << ship.position
   # take grid coordinate from get_grid and assign it
   #create an array to store ship coordiantes to call on late when playing
  end

  def hit_checker position
    #still broken
      return "MISSED" unless @ship_coords.include?(position)
      @hits += 1
      return "OUCH"
  end

  #not currently being referenced
  def get_grid ship
    grid.each_index{|i| j = grid[i].index (ship.position); return [i], [j] if j}
  end


end