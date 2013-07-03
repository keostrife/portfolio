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
  	@comment = Comment.new(userID: session[:id], postID: params[:comment][:postID], user_email: session[:email], user_name: session[:name], user_facebook: session[:facebook], comment_content: params[:comment][:content])
    if @comment.save
      redirect_to "/blog/#{params[:comment][:postID]}"
    end
  end
end
