class AddFromUserIdAndToUserIdToComments < ActiveRecord::Migration[8.0]
  def change
    add_column :comments, :from_user_id, :integer
    add_column :comments, :to_user_id, :integer
    remove_column :comments, :user_id
  end
end
