module ApplicationHelper
	def active(title, current)
		if title == current
			"active"
		end
	end
end
