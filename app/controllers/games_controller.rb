class GamesController < ApplicationController
  def index
    results_per_page = 3
    page = params[:page].nil? ? 0 : params[:page].to_i
    if params[:query].present?
      @games = Game.search_by_game_size_and_level(params[:query]).limit(results_per_page).offset(results_per_page * page)
      @games_count = Game.search_by_game_size_and_level(params[:query]).count
    else
      @games = Game.all.limit(results_per_page).offset(results_per_page * page)
      @games_count = Game.all.count
    end
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
    Player.create(team: 1, user: current_user, game: @game)
    @game.game_size = params["game"]["game_size"].split("-")[0].to_i
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
