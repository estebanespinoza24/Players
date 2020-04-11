class PlayersController < ApplicationController
  def index
    @player = Player.order("RANDOM()").first
  end

  def new
    @player = Player.new
  end

  def create
    @player = Player.create(player_params)
    if @player.invalid?
      flash[:error] = '<strong>Could Not Save</strong> the data you entered is invalid.'
    end
    redirect_to root_path
  end

  private

  def player_params
    params.require(:player).permit(:name, :team)
  end
end
