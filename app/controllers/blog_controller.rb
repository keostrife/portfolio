class BlogController < ApplicationController
  def index
  	@posts = Blog.last(13)
  end

  def show
  	@post = Blog.find(params[:id])
  	@comments = Comment.where(postID: params[:id]).last(13)
  end


end
