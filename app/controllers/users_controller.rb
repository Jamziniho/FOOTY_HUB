class UsersController < ApplicationController
  def updateProfile
    @user = current_user
    @user.update(first_name: params[:first_name], last_name: params[:last_name], preferred_position: params[:preferred_position], email: params[:email]);
    render json: { user: @user }
  end
end
