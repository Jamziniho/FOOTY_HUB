class PagesController < ApplicationController


  def home
  end

  def profile

  end

  def profile_params
    params.require(:profile).permit(:title, :body, :photo)
  end
end
