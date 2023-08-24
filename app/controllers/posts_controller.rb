class PostsController < ApplicationController
  before_action :find_user, only: %i[index show]
  before_action :find_post, only: %i[show]

  def index
    @posts = @user.posts
  end

  def show
    @user = current_user
    @post = Post.find(params[:id])
  end

  def new
    @user = current_user
    @post = @user.posts.new
  end

  def create
    @post = current_user.posts.new(post_params)
    if @post.save
      flash[:notice] = 'Post created successfully.'
      redirect_to user_path(current_user)
    else
      render 'new'
    end
  end

  private

  def find_user
    @user = User.find(params[:user_id])
  end

  def find_post
    @post = @user.posts.find_by(id: params[:id])
    return unless @post.nil?

    flash[:alert] = 'Post not found, back to posts page'
    redirect_to user_posts_path(@user)
  end

  def post_params
    params.require(:post).permit(:title, :text)
  end
end
