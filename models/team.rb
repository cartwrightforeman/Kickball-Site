require_relative "./team_data"
require_relative "player"

class Team
  attr_reader :name

  def initialize(name)
    @name = name
  end

  def self.all
    teams = []
    TeamData::ROLL_CALL.each do |team_name, roster|
      teams << Team.new(team_name.to_s)
    end
    teams
  end

  def players
    Player.all.select do |player|
      player.team_name == @name
    end
  end
end
