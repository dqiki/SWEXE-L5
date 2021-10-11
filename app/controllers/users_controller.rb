class UsersController < ApplicationController
  def index
    @users = User.all
  end
  def new
    @user = User.new
  end
  def create
    @user = User.new(id: params[:user][:id], pass: params[:user][:pass])
    if @user.save
      redirect_to '/'
    else
      render 'new'
    end
  end
  def destroy
    user = User.find(params[:id])
    user.destroy
    redirect_to '/'
  end
end

