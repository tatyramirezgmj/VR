class SessionsController < ApplicationController
  def new
  end

  def create
    @user = User.find_by(username: params[:username])
    if @user and @user.authenticate(params[:password])
      session[:user_id]= @user.id
      redirect_to games_path, notice: 'You have succesfully logged in.'
    else
      return render action: 'new' unless @user
    end
  end
end
