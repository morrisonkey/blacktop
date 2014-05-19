class Game < ActiveRecord::Base
	belongs_to :user
	has_many :users, through: :favorites
	has_many :items, through: :game_items
	has_many :game_items
	has_many :tags, through: :game_tags
	has_many :tags

	def add_game_tag(tag_name)
		tag = Tag.find_by_name(tag_name)

		if tag

			self.game_tags << GameTag.create({
				tag: tag
				})
		else
			puts "Failed to create tag! No tag with that name!"
			nil
		end
	end

	def add_game_item(item_name)
		item = Item.find_by_name(item_name)

		if item

			self.game_tags << GameItem.create({
				item: item
				})
		else
			puts "Failed to add item! No item with that name!"
			nil
		end
	end


end
