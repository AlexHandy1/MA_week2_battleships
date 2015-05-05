require_relative 'Ship'

class Board
  attr_accessor :ships

  def initialize
    @ships = []
  end

  def place ship
    @ships << ship
  end
end