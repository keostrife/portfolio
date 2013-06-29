class SessionController < ApplicationController
	def facebook
  		respond_to do |format|
  		      format.json { render json: Blog.find(1) }
  		end
  	end
end
