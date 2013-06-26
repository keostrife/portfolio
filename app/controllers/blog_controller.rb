class BlogController < ApplicationController
  def index
  	@posts = Blog.all
  end

  def show
  	@post = Blog.find(params[:id])
  	@comments = Comment.where(postID: params[:id])
  end

  def create
  	@comment = Comment.new
  end
end
