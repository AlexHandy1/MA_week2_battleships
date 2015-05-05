class Ship
  attr_accessor :position, :size, :hits

  def initialize position = nil
    @position = position
    @size = 1
    @floating = true
    @hits = 0
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
    @hits += 1
  end
end