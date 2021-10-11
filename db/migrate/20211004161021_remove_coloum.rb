class RemoveColoum < ActiveRecord::Migration[6.1]
  def change
    remove_column :credentials, :projects_id
  end
end
