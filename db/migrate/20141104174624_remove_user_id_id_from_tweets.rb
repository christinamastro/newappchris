class RemoveUserIdIdFromTweets < ActiveRecord::Migration
  def change
  	if Rails.env.production?
    	remove_column :tweets, :user_id_id, :integer
  	end
  end
end
