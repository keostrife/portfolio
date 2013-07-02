module ApplicationHelper
	def userInfo(attr)
		if attr == 'user'
			if session[:init] == 'yes'
				gravatar_id = Digest::MD5::hexdigest(session[:email])
				gravatar_url = "https://secure.gravatar.com/avatar/#{gravatar_id}"
				image_tag(gravatar_url, alt: session[:name], class: "gravatar") + session[:name]
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
