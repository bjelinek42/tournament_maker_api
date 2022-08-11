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

  def update
    team = Team.find_by(id: params[:id])
    team.name = params[:name]
    team.location = params[:location]
    team.logo = params[:logo]
    if team.save
      render json: team
    else
      render json: "Error, changes not saved."
    end
  end

  def destroy
    team = Team.find_by(id: params[:id])
    team.delete
    if team.delete
      render json: "Team deleted successfully."
    else
      render json: "Error, team not deleted."
    end
  end
end
