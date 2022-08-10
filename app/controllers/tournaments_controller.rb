class TournamentsController < ApplicationController
  def index
    tournaments = Tournament.all
    render json: t
  end

  def show
    tournament = Tournament.find_by(id: params[:id])
    render json: tournament
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
end
