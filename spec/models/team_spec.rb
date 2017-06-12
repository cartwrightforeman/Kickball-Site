require "spec_helper"

RSpec.describe Team do
  describe '#initialize' do
    it 'creates a Team object' do
      expect(Team.all[0]).to be_instance_of(Team)
    end

    it 'should have a reader for name' do
      expect(Team.all[0].name).to eq("Simpson Slammers")
    end
  end

  describe '.all' do
    it 'should return an array of all the team objects' do
      expect(Team.all).to be_instance_of(Array)
      expect(Team.all[0]).to be_instance_of(Team)
    end
  end

  describe '#players' do
    it 'returns array of all the players within the team' do
      expect(Team.all[0].players).to be_instance_of(Array)
      expect(Team.all[0].players.length).to eq(9)
      expect(Team.all[0].players[0]).to be_instance_of(Player)
    end
  end
end
