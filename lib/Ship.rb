class Ship
  attr_accessor :position, :size

  def initialize position = nil
    @position = position
    @size = 1
  end
end