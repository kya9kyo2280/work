class PostsController < ApplicationController
  def new
  	@post = Post.new
  end

  def create
  	  post = Post.new(post_params)
  	  post.save
  	  redidirect_to '/top'
  end

  private

  def post_params
  	  paramas.require(:post).permit(:title,:body)
  end
end
