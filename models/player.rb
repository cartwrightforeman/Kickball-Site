require_relative "./team_data"

class Player
  attr_reader :name, :position, :team_name


  def initialize(name, position, team_name)
    @name = name
    @position = position
    @team_name = team_name
  end

  def self.all
    players = []
    TeamData::ROLL_CALL.each do |team_name, roster|
      roster.each do |position, player_name|
        players << Player.new(player_name.to_s, position.to_s, team_name.to_s)
      end
    end
    players
  end
end
