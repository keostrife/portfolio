class BlogController < ApplicationController
  def index
  	@posts = Blog.all
  end

  def show
  	@post = Blog.find(params[:id])
  	@comments = Comment.where(postID: params[:id])
  end

  def commentnew
    if params.has_key?(:postID)
      @comment = Comment.new(userID: params[:userID], postID: params[:postID], user_email: params[:user_email].to_s, user_name: params[:user_name].to_s, user_facebook: params[:user_facebook].to_s, comment_content: params[:comment].to_s)
      respond_to do |format|
          format.json { render:json => params }
      end
    end
  end
end
