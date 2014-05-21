class Game < ActiveRecord::Base
	belongs_to :user
	has_many :users, through: :favorites
	has_many :items, through: :game_items
	has_many :game_items
	has_many :tags, through: :game_tags
	has_many :tags

	# def add_game_tag(tag_name)
	# 	tag = Tag.find_by_name(tag_name)

	# 	if tag

	# 		self.game_tags << GameTag.create({
	# 			tag: tag
	# 			})
	# 	else
	# 		puts "Failed to create tag! No tag with that name!"
	# 		nil
	# 	end
	# end

	def self.add_tag(tag)
    GameTag.create({
      game_id: self.id,
      tag_id: tag.id
      })
  end

  def remove_tag(tag_id)
    tag = GameTag.find_by_game_id_and_tag_id(self.id, tag_id)
    tag.destroy
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
