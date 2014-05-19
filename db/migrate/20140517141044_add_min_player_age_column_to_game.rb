class AddMinPlayerAgeColumnToGame < ActiveRecord::Migration
  def change
  	add_column :games, :min_player_age, :integer
  end
end
