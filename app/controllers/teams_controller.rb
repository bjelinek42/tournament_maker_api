class TeamsController < ApplicationController
  def index
    teams = Team.all
    render json: teams
  end

  def show
    team = Team.find_by(id: params[:id])
    render json: team
  end

  def create
    team = Team.new(
      name: params[:name],
      location: params[:location],
      logo: params[:logo]
    )
    if team.save
      render json: team
    else
      render json: "Error, team not saved."
    end
  end
  
end
