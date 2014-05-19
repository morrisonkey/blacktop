class AddPhotoToGame < ActiveRecord::Migration
  def change
  	add_column :games, :photo, :string
  end
end
