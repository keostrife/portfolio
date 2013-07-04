class BlogController < ApplicationController
  def index
  	@posts = Blog.order("created_at DESC").limit(13)
  end

  def show
  	@post = Blog.find(params[:id])
  	@comments = Comment.where(postID: params[:id]).order("created_at DESC").limit(13)
  end


end
