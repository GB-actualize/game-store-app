class CreateCategoryGames < ActiveRecord::Migration[5.0]
  def change
    create_table :category_games do |t|
      t.integer :category_id
      t.integer :game_id

      t.timestamps
    end
  end
end
