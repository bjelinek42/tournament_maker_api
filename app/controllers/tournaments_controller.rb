class TournamentsController < ApplicationController
  def index
    @tournaments = Tournament.all
    render template: "tournaments/index"
  end

  def show
    @tournament = Tournament.find_by(id: params[:id])
    render template: "tournaments/show"
  end

  def create
    tournament = Tournament.new(
      name: params[:name],
      location: params[:location],
      date: params[:date],
      team_count: params[:team_count]
    )
    tournament.save
    render json: tournament
  end

  def update
    tournament = Tournament.find_by(id: params[:id])
    tournament.name = params[:name] || tournament.name
    tournament.location = params[:location] || tournament.location
    tournament.team_count = params[:team_count] || tournament.team_count
    tournament.date = params[:date] || tournament.date
    tournament.save
    render json: tournament
  end

  def destroy
    tournament = Tournament.find_by(id: params[:id])
    if tournament.delete
      render json: "Tournament deleted successfully."
    else
      render json: "Tournament not deleted"
    end
  end
end
