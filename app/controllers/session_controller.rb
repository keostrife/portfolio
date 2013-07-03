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
  	    @comment = Comment.create(userID: params[:userID].to_i, postID: params[:postID].to_i, user_email: params[:user_email].to_s, user_name: params[:user_name].to_s, user_facebook: params[:user_facebook].to_s, comment_content: params[:comment].to_s)
  	    respond_to do |format|
  	        format.json { render:json => params }
  	    end
  	  end
  	end
end
