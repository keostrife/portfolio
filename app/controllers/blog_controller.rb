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
  	@comment = Comment.new(userID: params[:comment][:userID], postID: params[:comment][:postID], user_email: params[:comment][:user_email], user_name: params[:comment][:user_name], user_facebook: params[:comment][:user_facebook], comment_content: params[:comment][:content])
    if @comment.save
      redirect_to "/blog/#{params[:comment][:postID]}"
    end
  end
end
