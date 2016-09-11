class ChangePriceToInteger < ActiveRecord::Migration[5.0]
  def change
    change_column :games, :price, :integer
  end
end
