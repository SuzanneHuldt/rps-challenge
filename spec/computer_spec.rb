require 'computer.rb'

describe Computer do

  describe "#choose" do
    it "sets computer choice variable at random" do
      computer = Computer.new
      expect(computer.choose).to be_instance_of(String)
    end
  end
end
