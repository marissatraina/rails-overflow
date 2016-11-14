class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def login
    @users = User.find_by(username: params[:username])
    if @user && @user.authenticate(params[:password])
      session[:user_id] = @user.id
      redirect_to root
    else
      @errors = ["Your username and/or password were not found"]
    end
  end
end
