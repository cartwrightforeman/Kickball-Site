require_relative "./team_data"

class Player
  attr_reader :name, :position, :team_name

  @@players = []

  def initialize(name, position, team_name)
    @name = name
    @position = position
    @team_name = team_name
    @@players << self
  end

  def self.all
    @@players
  end

  def self.parse
    TeamData::ROLL_CALL.each do |team_name, roster|
      roster.each do |position, player_name|
        Player.new(player_name.to_s, position.to_s, team_name.to_s)
      end
    end
  end
end

Player.parse
