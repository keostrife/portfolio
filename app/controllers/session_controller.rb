class SessionController < ApplicationController
	def facebook
		if params.has_key?(:name)
			session[:name] = params[:name]
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
  	    @comment = Comment.new(postID: params[:postID], user_email: "", user_name: "", user_facebook: "", comment_content: params[:comment])
  	    if @comment.save
	  	    respond_to do |format|
	  	        format.json { render:json => params }
	  	    end
  		end
  	  end
  	end
end
