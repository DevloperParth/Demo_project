class CreateCredentials < ActiveRecord::Migration[6.1]
  def change
    create_table :credentials do |t|
      t.string :title
      t.string :email
      t.string :password
      t.string :remark
      t.timestamps
    end
  end
end
