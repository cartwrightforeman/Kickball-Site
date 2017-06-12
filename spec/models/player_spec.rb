require "spec_helper"

RSpec.describe Player do
  let(:test_player) { Player.new("Juan", "shortstop", "Sharkers") }
  let(:test_player2) { Player.new("Susanne", "pitcher", "Manta Rays") }

  xdescribe '.all' do
    it 'should return an array of player objects' do
      expect(Player.all).to eq([test_player, test_player2])
    end
  end

  describe '#initialize' do
    it 'creates a new Player object' do
      expect(test_player).to be_instance_of(Player)
    end

    it 'should have a reader for name' do
      expect(test_player.name).to eq("Juan")
    end

    it 'should have a reader for position'  do
      expect(test_player.position).to eq("shortstop")
    end

    it 'should have a reader for team_name' do
      expect(test_player.team_name).to eq("Sharkers")
    end
  end
end
