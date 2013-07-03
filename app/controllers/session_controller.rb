class SessionController < ApplicationController
	def facebook
		if params.has_key?(:name)
			session[:name] = params[:name]
			session[:id] = params[:id]
			session[:email] = params[:email]
			session[:facebook] = params[:facebook]
			session[:init] = 'yes'
	  		respond_to do |format|
	  		    format.json { render:json => params }
	  		end
  		end
  	end

  	def commentnew
  	  if params.has_key?(:postID)
  	    @comment = Comment.create(userID: params[:userID], postID: params[:postID], user_email: params[:user_email], user_name: params[:user_name], user_facebook: params[:user_facebook], comment_content: params[:comment])
  	    respond_to do |format|
  	        format.json { render:json => params }
  	    end
  	  end
  	end
end
