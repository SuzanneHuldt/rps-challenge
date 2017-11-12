
class Computer
  attr_accessor :points,:choice
  DEFAULT_POINTS = 0

  def initialize
    @points = DEFAULT_POINTS
    @choice = nil
    @choices = ['rock', 'paper', 'scissors']
  end

  def choose
    @choice = @choices.sample
  end

  def point
    @points += 1
  end

end
