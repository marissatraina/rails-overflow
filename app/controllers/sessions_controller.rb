class SessionsController < ApplicationController
  def new
    @user = User.new(params[:user])
  end
end
