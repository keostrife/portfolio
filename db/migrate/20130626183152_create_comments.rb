class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.integer :userID
      t.integer :postID
      t.string :user_name
      t.string :user_email
      t.string :user_facebook
      t.string :comment_content
      t.timestamps
    end
  end
end
