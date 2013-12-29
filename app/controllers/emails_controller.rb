class EmailsController < ApplicationController
  def index
    @user   = current_user
    @emails = @user.emails
  end

  def show
    @user  = current_user
    @email = Email.find(params["id"])
  end

  def destroy
    @email = Email.find(params["id"])
    @email.destroy
    redirect_to emails_path
  end
end
