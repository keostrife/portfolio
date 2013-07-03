class BlogController < ApplicationController
  def index
  	@posts = Blog.all
  end

  def show
  	@post = Blog.find(params[:id])
  	@comments = Comment.where(postID: params[:id])
    @comment = Comment.new
  end

  def create
  	@comment = Comment.new(params[:comment])
    if @comment.save
      redirect_to "/blog/#{params[:comment][:postID]}"
    end
  end
end
