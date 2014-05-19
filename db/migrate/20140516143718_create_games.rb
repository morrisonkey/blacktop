class CreateGames < ActiveRecord::Migration
  def change
    create_table :games do |t|
      t.string :name
      t.string :ig_hash_tag
      t.integer :user_id
      t.integer :min_players
      t.integer :max_players
      t.string :blurb
      t.string :objective
      t.text :gameplay
      t.text :rules
      t.text :additional_information

      t.timestamps
    end
  end
end
