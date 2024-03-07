class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home

  def home
  end

  def profile
  end

  def profile_params
    params.require(:profile).permit(:title, :body, :photo)
  end

  def dashboard
    @joined_games = current_user.games.filter { |game| game.user_id != current_user.id }
    @hosted_games = current_user.games.filter { |game| game.user_id == current_user.id }
  end
end
