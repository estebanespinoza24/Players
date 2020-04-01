class PlayersController < ApplicationController
  def index
    @player = Player.order("RANDOM()").first
  end
end
