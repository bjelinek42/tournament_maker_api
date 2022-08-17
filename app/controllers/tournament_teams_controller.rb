class TournamentTeamsController < ApplicationController

  def index
    tt = TournamentTeam.where(tournament_id: params[:tournament_id])
    render json: tt
  end

  def show
    redirect_to team_path(id: params[:id])
  end
end
