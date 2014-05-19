class CreateTempPhotos < ActiveRecord::Migration
  def change
    create_table :temp_photos do |t|
      t.string :name
      t.string :photo_url

      t.timestamps
    end
  end
end
