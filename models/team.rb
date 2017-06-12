require_relative "./team_data"
require_relative "player"

class Team
  attr_reader :name

  @@teams = []

  def initialize(name)
    @name = name
    @@teams << self
  end

  # TeamData::ROLL_CALL

  def self.all
    @@teams
  end
end
