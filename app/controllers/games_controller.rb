class GamesController < ApplicationController
  def index
    @games = Game.all
  end

  def show
    @games = Game.find(params[:id])
  end

  def new
    @game = Game.new
  end

  def create
    @game = Game.new(game_params)
    @game.user = current_user
    if @game.save!
      @chatroom = Chatroom.new
      @chatroom.game = @game
      @chatroom.save!
      redirect_to game_path(@game)
    else
      render :new, status: :unprocessable_entity
    end
  end

  private

  def game_params
    params.require(:game).permit(:game_size, :date, :location, :price, :description, :level)
  end
end
