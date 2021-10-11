class AddAttechmentToCredenstial < ActiveRecord::Migration[6.1]
  def change
    add_attachment :credentials, :image
  end
end
