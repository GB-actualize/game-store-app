class ChangeGameIdToInteger < ActiveRecord::Migration[5.0]
  def change
    change_column :images, :game_id, :integer
  end
end
