class SessionController < ApplicationController
	def facebook
  		respond_to do |format|
  		      format.json { render:json => params }
  		  end
  	end
end
