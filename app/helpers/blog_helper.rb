module BlogHelper
	def get_comment_count(postID)
		@comment = Comment.where(postID: postID)
		@comment.count
	end
end
