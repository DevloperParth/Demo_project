class RemoveUserIdToCredentials < ActiveRecord::Migration[6.1]
  def change
    remove_column :credentials, :user_id
  end
end
