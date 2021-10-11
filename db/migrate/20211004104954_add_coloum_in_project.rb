class AddColoumInProject < ActiveRecord::Migration[6.1]
  def change
    add_attachment :projects, :image
  end
end
