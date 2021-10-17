class UsersController < ApplicationController
  def index
    @users = User.all
  end
  def new
    @user = User.new
  end
  def create
    uid = params[:user][:uid]
    pass = BCrypt::Password.create(params[:user][:pass])
    user = User.new(uid: uid, pass: pass)
    user.save
    redirect_to root_path
  end
  def destroy
    user = User.find(params[:id])
    if user.destroy
      flash[:notice] = '1レコード削除しました'
    end
    redirect_to root_path
  end
end

