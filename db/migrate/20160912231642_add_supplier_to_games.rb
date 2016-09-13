class AddSupplierToGames < ActiveRecord::Migration[5.0]
  def change
    add_column :games, :supplier_id, :integer
  end
end
