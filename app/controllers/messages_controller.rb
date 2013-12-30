class MessagesController < ApplicationController
  before_filter :authenticate_user!
  def index
    @user   = current_user
    @emails = @user.messages
  end

  def show
    @user  = current_user
    @email = Message.find(params["id"])
    @email.self_destruct
    @email_parts = @email.message_parts
  end

  def destroy
    @email = Message.find(params["id"])
    @email.destroy
    redirect_to messages_path
  end

  def download_attachment
    part = MessagePart.find(params["id"])
    send_data(part.body,
                type: "#{part.mime_type}", disposition: 'attachment', filename: "#{part.filename}")
  end
end
