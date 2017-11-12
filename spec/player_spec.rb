require 'player.rb'


describe Player do
  let(:choice) { double('rock') }
  describe "#choose" do
    it "sets player choice to choice variable" do
      player = Player.new('suze')
      expect(player.choose('rock')).to eq 'rock'
    end
  end
end
