class CreateFavorites < ActiveRecord::Migration
  def change
    create_table :favorites do |t|
      t.integer :player_id
      t.integer :game_id

      t.timestamps
    end
  end
end
