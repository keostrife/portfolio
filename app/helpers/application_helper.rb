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
				link_to "Sign Out", session_signout_path
			else
				'<fb:login-button width="100" max-rows="1"></fb:login-button>'
			end
		end
	end
end
