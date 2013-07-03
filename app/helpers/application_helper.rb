module ApplicationHelper
	def gravatar_for(email)
		"<img alt=\"user\" class=\"gravatar\" style=\"width: 20px;\" src=\"https://secure.gravatar.com/avatar/#{Digest::MD5::hexdigest(email.downcase)}\">"
	end

	def userInfo(attr)
		if attr == 'user'
			if session[:init] == 'yes'
				"#{gravatar_for(session[:email].to_s)} #{session[:name]}"
				#session[:name]
			else
				'<span class="symbol">U</span> Guest'
			end
		else
			if session[:init] == 'yes'
				''
			else
				'<span class="symbol"></span><ul><li><fb:login-button perms="email" width="100" max-rows="1"></fb:login-button></li></ul>'
			end
		end
	end
end
