class UsersController < ApplicationController

  def index
    @users = User.all
  end

  def new
    @user = User.new
  end

  def show
  end

  def create
    @user = User.new user_params
    return render action: 'new' unless @user.save
    redirect_to root_path, notice: 'Created user'
  end

  def update
  end

  def destroy
  end

  private
  def user_params
    params.require(:user).permit(:username, :password, :password_confirmation)
  end
end
