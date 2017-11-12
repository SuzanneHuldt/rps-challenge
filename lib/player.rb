
class Player
  attr_accessor :name, :points, :choice
  DEFAULT_POINTS = 0

  def initialize(name)
    @name = name
    @points  = DEFAULT_POINTS
    @choice = nil
  end

  def choose(choice)
    @choice = choice
  end

  def point
    @points += 1
  end

end
