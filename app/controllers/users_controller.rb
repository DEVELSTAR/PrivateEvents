class UsersController < ApplicationController
  def index
    @users = User.all
  end
  def new
    @user = User.new
  end
  def create
    @user = User.new(user_params)
    @user.save
    session[:user_id] = @user.id
    flash.notice = "User #{@user.email} successfully created! Thank you for signing up!"
    redirect_to user_path
    redirect_to user_path(@user)
  end

  def show
     @user = User.find(params[:id])
  end

  private

  def user_params
    params.require(:user).permit(:email, :password, :user_id)
  end
end