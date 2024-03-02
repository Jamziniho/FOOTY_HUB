class ChatroomController < ApplicationController
  def create
    @chatroom = Chatroom.new(chatroom_params)
    @chatroom.game = @game
    if @chatroom.save
      redirect_to chatroom_path(@chatroom)
    else
      render :new, status: :unprocessable_entity
    end
  end
end
