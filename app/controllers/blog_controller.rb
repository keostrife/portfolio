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
  	@comment = Comment.new(userID: params[:comment][:userID], postID: params[:comment][:postID], user_email: params[:comment][:user_email].to_s, user_name: params[:comment][:user_name].to_s, user_facebook: params[:comment][:user_facebook].to_s, comment_content: params[:comment][:content].to_s)
    if @comment.save
      redirect_to "/blog/#{params[:comment][:postID]}"
    end
  end
end
