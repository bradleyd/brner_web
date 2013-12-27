class EmailsController < ApplicationController
  def index
    @user = User.find 4
    @emails = @user.emails
  end

  def show
    @user = User.find 4
    @email = Email.find(params["id"])
  end

  def destroy
    @email = Email.find(params["id"])
    @email.destroy
    redirect_to emails_path
  end
end
