class SessionController < ApplicationController
	def facebook
		if(params.has_key?(:name))
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
end
