class RemoveGameIdFromOrders < ActiveRecord::Migration[5.0]
  def change
    remove_column :orders, :game_id, :integer
  end
end
