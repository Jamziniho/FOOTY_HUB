class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home

  def home
    redirect_to games_path if user_signed_in?
  end

  def profile
    @user = current_user
  end

  def profile_params
    params.require(:profile).permit(:title, :body, :photo)
  end

  def dashboard
    @joined_games = current_user.games.filter { |game| game.user_id != current_user.id }
    @hosted_games = Game.where(user_id: current_user.id)
  end
end
