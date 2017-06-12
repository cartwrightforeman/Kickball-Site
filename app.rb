require "sinatra"
require_relative "models/player"
require_relative "models/team"
require_relative "models/team_data"
require 'pry'

set :bind, '0.0.0.0'  # bind to all interfaces


get "/" do
  "<h1>The LACKP Homepage<h1>"
end

get "/teams/?" do
  @team_names = Team.all.map { |team| team.name }

  erb :teams
end

get "/teams/:team_name" do
  @team = Team.all.find { |t| t.name == params[:team_name]}
  @players = @team.players
  
  erb :team_players
end
