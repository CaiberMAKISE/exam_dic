class PostsController < ApplicationController
  PER = 10
  before_action :set_post, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!, only: [:new, :edit, :destroy]

  def index
    @posts = Post.all.order(updated_at: :desc).page(params[:page]).per(PER)
  end

  def show
  end

  def new
    unless current_user.username
      redirect_to edit_user_registration_path, notice: "名前を設定してください"
    else
      @post = Post.new
    end
  end

  def create
    @post = current_user.posts.build(post_params)
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
    @post = Post.find(params[:id])
  end

  def post_params
    params.require(:post).permit(:software_name, :content)
  end
end
