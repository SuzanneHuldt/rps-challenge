require 'game.rb'
describe Game do

  describe "#compare" do
    it "compares player vs computer input and returns winning play" do
      player = 'paper'
      computer = 'rock'
      game = Game.new(Player.new('suze'), Computer.new)
      expect(game.compare(player, computer)).to eq ('player')
    end
  end

  describe "#play" do
    it "compares player vs computer input and returns winning play" do
      choice = 'paper'
      game = Game.new(Player.new('suze'), Computer.new)
      expect(game.play(choice)).to eq ('player')
    end
  end
end
