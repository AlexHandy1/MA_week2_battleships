class Ship
  attr_accessor :position, :size

  def initialize position = nil
    @position = position
    @size = 1
    @floating = true
    @hit = 0
  end

  def floating?
    @floating
  end

  def sunk?
    !@floating
  end

  def is_sunk
    @floating = false
  end

  def is_hit
    @hit += 1
  end
end