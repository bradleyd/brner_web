class UsersController < ApplicationController
  def index
    
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      session[:user_id] = @user.id
      redirect_to @user, notice: "you are setup to start receiving messages"
    else
      render :new
    end
  end

  def destroy
    @user = User.find(params["id"])
    @user.destroy
  end

  def update
  end

  def show
    @user = User.includes(:messages).find(params["id"])
    @emails = @user.messages
  end

  def edit
  end

  private
  def user_params
    params.require(:user).permit(:email)
  end 	
end
