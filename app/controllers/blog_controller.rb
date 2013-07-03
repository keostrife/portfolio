class BlogController < ApplicationController
  def index
  	@posts = Blog.all
  end

  def show
  	@post = Blog.find(params[:id])
  	@comments = Comment.where(postID: params[:id])
  end

  def create
  	@comment = Comment.new(userID: session[:id], postID: params[:comment][:postID], user_email: session[:email], user_name: session[:name], user_facebook: session[:facebook], comment_content: params[:comment][:content])
    if @comment.save
      render 'show'
    end
  end
end
