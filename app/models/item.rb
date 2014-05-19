class Item < ActiveRecord::Base
	has_many :games, through: :game_items
	has_many :game_items
end
