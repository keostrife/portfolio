module ApplicationHelper
	def userInfo(attr)
		if attr == 'user'
			if session[:init] == 'yes'
				#"<img alt=\"User\" class=\"gravatar\" src=\"https://secure.gravatar.com/avatar/#{Digest::MD5.hexdigest(session[:email].downcase)}\">" +
				session[:name]
			else
				'<span class="symbol">U</span> Guest'
			end
		else
			if session[:init] == 'yes'
				''
			else
				'<span class="symbol"></span><ul><li><fb:login-button width="100" max-rows="1"></fb:login-button></li></ul>'
			end
		end
	end
end
