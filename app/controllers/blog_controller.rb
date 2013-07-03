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
  	@comment = Comment.new(userID: session[:id], postID: params[:comment][:postID], user_email: session[:email].to_s, user_name: session[:name].to_s, user_facebook: session[:facebook].to_s, comment_content: params[:comment][:content].to_s)
    if @comment.save
      redirect_to "/blog/#{params[:comment][:postID]}"
    end
  end
end
