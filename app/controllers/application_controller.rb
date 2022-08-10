class ApplicationController < ActionController::API

  def index
    tournaments = Tournament.all
    render json: t
  end

  def show
    tournament = Tournament.find_by(id: params[:id])
    render json: tournament
  end
  
end
