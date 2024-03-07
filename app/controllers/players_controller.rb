class PlayersController < ApplicationController
  def create
    @player = Player.new
    @player.user = current_user
    @player.game = Game.find(params[:game_id])
    if @player.save
      redirect_to dashboard_path
    else
      render :new, status: :unprocessable_entity
    end
  end

  def destroy
    @player = Player.find(params[:id])
    @player.destroy
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
