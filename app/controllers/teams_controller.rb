class TeamsController < ApplicationController
  def index
    teams = Team.all
    render json: teams, each_serializer: SimpleTeamSerializer
  end

  def show
    team = Team.find(params[:id])
    render json: team
  end
end
