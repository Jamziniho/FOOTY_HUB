class PlayersController < ApplicationController
  def create
    @player = Player.new
    @player.user = current_user
    @player.game = Game.find(params[:game_id])
    render head 403 if @player.game.players.length == @player.game.game_size

    if @player.game.players.length.odd?
      @player.team = 1
    else
      @player.team = 2
    end
    if @player.save
      redirect_to dashboard_path
    else
      render :new, status: :unprocessable_entity
    end
  end

  def destroy
    game = Game.find(params[:game_id])
    user_id = params[:id].to_i
    player = game.players.find { |p| p.user_id == user_id }
    player.destroy
    redirect_to dashboard_path, status: :see_other
  end

  def update
    @player = Player.find(params[:id])
    @player.update(player_params)

    if @player.save
      redirect_to dashboard_path
    else
      render :edit
    end
  end
end
