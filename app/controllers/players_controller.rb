class PlayersController < ApplicationController
  def index
    @player = Player.order("RANDOM()").first
  end

  def new
    @player = Player.new
  end

  def create
    Player.create(player_params)
    redirect_to root_path
  end

  private

  def player_params
    params.require(:player).permit(:name, :team)
  end
end
