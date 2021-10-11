class CreateProjects < ActiveRecord::Migration[6.1]
  def change
    create_table :projects do |t|
      t.string :title
      t.string :client_name
      t.string :pay_rate
      t.string :pay_frequency
      t.timestamps
    end
  end
end
