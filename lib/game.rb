require_relative 'player.rb'
require_relative 'computer.rb'

class Game
  attr_accessor :player, :computer, :winner, :counter
  def initialize(player, computer)
    @player = player
    @computer = computer
    @winner = nil
    @counter = 0
  #  @points = {}
  end

  def self.create(player, computer)
    @game = Game.new(player, computer)
  end

  def self.instance
    @game
  end

  def play(choice)
    @counter += 1
    @player.choose(choice)
    @computer.choose
    compare(@player.choice, @computer.choice)
  end

  def compare(player, computer)
    if player == 'scissors' and computer == 'paper'
      @winner = @player.name
      @player.point
    elsif player == 'scissors' and computer == 'rock'
      @winner = 'computer'
      @computer.point
    elsif player == 'paper' and computer == 'scissors'
      @winner = 'computer'
      @computer.point
    elsif player == 'paper' and computer == 'rock'
      @winner = @player.name
      @player.point
    elsif player == 'rock' and computer == 'paper'
      @winner = 'computer'
      @computer.point
    elsif player == 'rock' and computer == 'scissors'
      @winner = @player.name
      @player.point
    else
      @winner = nil
    end
    @winner
end

  def reset
    @player.points = 0
    @computer.points = 0
    @counter = 0
  end

end
