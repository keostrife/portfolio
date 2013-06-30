module ApplicationHelper
	def userInfo(attr)
		if attr = 'user'
			if session[:init] = 'yes'
				session[:user]
			else
				'Guest'
			end
		else
			if session[:init] = 'yes'
				'Sign Out'
			else
				'<fb:login-button width="100" max-rows="1"></fb:login-button>'
			end
		end
	end
end
