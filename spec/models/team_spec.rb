require "spec_helper"

RSpec.describe Team do
  let(:test_team) { Team.new("Sharkers") }
  let(:test_team2) { Team.new("Manta Rays") }

  describe '#initialize' do
    it 'creates a Team object' do
      expect(test_team).to be_instance_of(Team)
    end

    it 'should have a reader for name' do
      expect(test_team.name).to eq("Sharkers")
    end
  end

  describe '.all' do
    it 'should return an array of all the team objects' do
      expect(Team.all).to eq(["Simpson Slammers", ])
    end
  end

  describe '#players' do
    let(:test_player) { Player.new("Juan", "shortstop", "Sharkers")}
    let(:test_player2) { Player.new("Susan", "goalee", "Sharkers")}

    it 'returns array of all the players within the team' do
      expect(test_team.players).to eq([test_player, test_player2])
    end
  end
end
