require_relative "./team_data"
require_relative "player"

class Team
  attr_reader :name

  @@teams = []

  def initialize(name)
    @name = name
    @@teams << self
  end

  def self.all
    @@teams
  end

  def players
    Player.all.select do |player|
      player.team_name == @name
    end
  end

  def self.parse
    TeamData::ROLL_CALL.each do |team_name, roster|
      Team.new(team_name.to_s)
    end
  end
end

Team.parse
