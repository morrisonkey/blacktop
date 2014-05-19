class Tag < ActiveRecord::Base
	has_many :games, through: :game_tags

	has_many :game_tags
end
