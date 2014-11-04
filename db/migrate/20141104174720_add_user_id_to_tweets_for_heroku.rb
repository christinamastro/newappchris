class AddUserIdToTweetsForHeroku < ActiveRecord::Migration
  def change
  	if Rails.env.production?
   	 	add_reference :tweets, :user, index: true
   	end
  end
end
