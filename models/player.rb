require_relative "./team_data"

class Player
  attr_reader :name, :position, :team

  def initialize(name, position, team)
    @name = name
    @position = position
    @team = team

  end

  def self.all
    
  end
end
