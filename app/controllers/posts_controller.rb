class PostsController < ApplicationController
  before_action :set_post, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!, only: [:new, :edit, :destroy]

  def index
    @posts = Post.all
  end

  def show
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.new(post_params)
    if @post.save
      redirect_to posts_path, notice: "レビューを投稿しました"
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @post.update(post_params)
      redirect_to posts_path, notice: "レビューを編集しました"
    else
      render :edit
    end
  end
  
  def destroy
    if @post.destroy
      redirect_to posts_path, notice: "レビューを削除しました"
    else
      render :index
    end
  end

  private
  def set_post
    @blog = Post.find(params[:id])
  end

  def post_params
    params.require(:post).permit(:software_name, :content)
  end
end
