class RenameProductIdToGameId < ActiveRecord::Migration[5.0]
  def change
    rename_column :orders, :product_id, :game_id
  end
end
