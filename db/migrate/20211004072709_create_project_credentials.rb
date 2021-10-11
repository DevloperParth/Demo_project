class CreateProjectCredentials < ActiveRecord::Migration[6.1]
  def change
    create_table :project_credentials do |t|
      t.string :title
      t.string :email
      t.string :password
      t.string :remark
      t.timestamps
    end
  end
end
