class CreateGameItems < ActiveRecord::Migration
  def change
    create_table :game_items do |t|
      t.integer :game_id
      t.integer :item_id

      t.timestamps
    end
  end
end
