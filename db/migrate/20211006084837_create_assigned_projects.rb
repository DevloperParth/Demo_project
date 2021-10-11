class CreateAssignedProjects < ActiveRecord::Migration[6.1]
  def change
    create_table :assigned_projects do |t|
      t.belongs_to :project
      t.belongs_to :user
      t.timestamps
    end
  end
end
