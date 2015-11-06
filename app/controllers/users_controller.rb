class UsersController < ApplicationController
  def show
    @user = User.includes(:protos).find(params[:id])
  end
end
