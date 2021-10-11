class ChangeColoumnDataTypes < ActiveRecord::Migration[6.1]
  def change
    remove_column :projects, :pay_rate
    add_column :projects, :pay_rate, :decimal
  end
end
