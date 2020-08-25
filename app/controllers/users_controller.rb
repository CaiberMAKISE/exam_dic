class UsersController < ApplicationController
  PER = 10
  before_action :authenticate_user!
  
  def show
    @user = User.find(params[:id])
    @posts = Post.where(user_id: params[:id]).page(params[:page]).per(PER)
  end
end
