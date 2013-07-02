module ApplicationHelper
	def userInfo(attr)
		if attr == 'user'
			if session[:init] == 'yes'
				session[:name]
			else
				'Guest'
			end
		else
			if session[:init] == 'yes'
				''
			else
				'<ul><li><fb:login-button width="100" max-rows="1"></fb:login-button></li></ul>'
			end
		end
	end
end
