class Comment < ActiveRecord::Base
  attr_accessible :postID, :user_email, :user_facebook, :user_name, :comment_content
end
