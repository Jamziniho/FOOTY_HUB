class GamesController < ApplicationController
  def index
    @games_count = Game.count
    results_per_page = 5
    @games = Game.all
    page = params[:page].nil? ? 0 : params[:page].to_i
    p page
    @games = Game.limit(results_per_page).offset(results_per_page * page)
    p @games
  end

  def show
    @game = Game.find(params[:id])
  end

  def new
    @game = Game.new
  end

  def create
    @game = Game.new(game_params)
    @game.user = current_user
    @game.game_size = params["game"]["game_size"].split("-")[0].to_i * 2
    if @game.save!
      @chatroom = Chatroom.new
      @chatroom.game = @game
      @chatroom.save!
      redirect_to game_path(@game)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def formation
    @game = Game.find(params[:id])
  end

  private

  def game_params
    params.require(:game).permit(:game_size, :date, :location, :price, :description, :level)
  end
end
