class UserAddCredentials < ActiveRecord::Migration[6.1]
  def change
    add_reference :credentials, :user, foreign_key: true
  end
end
