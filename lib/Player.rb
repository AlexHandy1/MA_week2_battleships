require_relative 'Board'

class Player
  attr_accessor :board
  def initialize(board = Board.new)
    @board = board
  end
end