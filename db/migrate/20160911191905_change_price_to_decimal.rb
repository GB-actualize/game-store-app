class ChangePriceToDecimal < ActiveRecord::Migration[5.0]
  def change
    change_column :games, :price, :decimal, precision: 8, scale: 2
  end
end
