require "spec_helper"

RSpec.describe Player do
  describe '#initialize' do
    it 'creates a new Player object' do
      expect(Player.all[0]).to be_instance_of(Player)
    end

    it 'should have a reader for name' do
      expect(Player.all[0].name).to eq("Bart Simpson")
    end

    it 'should have a reader for position'  do
      expect(Player.all[0].position).to eq("Catcher")
    end

    it 'should have a reader for team_name' do
      expect(Player.all[0].team_name).to eq("Simpson Slammers")
    end
  end

  describe '.all' do
    it 'should return an array of player objects' do
      expect(Player.all).to be_instance_of(Array)
      expect(Player.all[0]).to be_instance_of(Player)
    end
  end
end
