class LikesController < ApplicationController
  before_action :find_post, only: %i[create destroy]

  def create
    @like = @post.likes.new
    @like.author = current_user
    @like.save
    redirect_to user_post_path(@user, @post)
  end

  def destroy
    @like = @post.likes.find_by(post: @post) # Find the like
    @like&.destroy # Destroy the like if found
    redirect_to user_post_path(@user, @post)
  end

  private

  def find_post
    @post = Post.find(params[:post_id])
  end
end
