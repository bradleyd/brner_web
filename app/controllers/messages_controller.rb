class MessagesController < ApplicationController
  def index
    @user   = current_user
    @emails = @user.messages
  end

  def show
    @user  = current_user
    @email = Message.find(params["id"])
    @email_parts = @email.message_parts
  end

  def destroy
    @email = Message.find(params["id"])
    @email.destroy
    redirect_to messages_path
  end
end
