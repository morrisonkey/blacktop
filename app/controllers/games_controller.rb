class GamesController < ApplicationController

	# before_action :authenticate_with_basic_auth
	# before_save :process_tags
	before_action :require_login, only: [:edit, :update, :delete]

	def new
		if params[:commit] == "add tag"

			# taggable section of game creation

			# parse tag list
			@page = 3
			if params[:new_tag].chomp != ""
				tag_name = params[:new_tag].chomp
				if Tag.find_by_name(tag_name)
					new_tag = Tag.find_by_name(tag_name)
				else
					new_tag = Tag.create(:name => tag_name)
				end
				@tags = TagHelper.process_tags(params[:tag_list] || "")
				@tags << new_tag.name
			else
				@tags = TagHelper.process_tags(params[:tag_list] || "")
				new_tag = Tag.find_by_id(params[:tag])
				@tags << new_tag.name
			end
			@tag_list = @tags.uniq.sort.join(",")

			# update the game
		elsif params[:commit] == "add item"

			# taggable section of game creation

			# parse tag list
			@page = 4
			if params[:new_item].chomp != ""
				item_name = params[:new_item].chomp
				if Item.find_by_name(item_name)
					new_item = Item.find_by_name(item_name)
				else
					new_item = Item.create(:name => item_name)
				end
				@items = TagHelper.process_tags(params[:item_list] || "")
				@items << new_item.name
			else
				@items = TagHelper.process_tags(params[:item_list] || "")
				new_item = Item.find_by_id(params[:item])
				@items << new_item.name
			end
			@item_list = @items.uniq.sort.join(",")

			# update the game
		elsif params[:name]
			@page = params[:page].to_i + 1
		else
			@page = 1
		end
			if @page == 2
				add_photo(params[:ig_hash_tag].gsub(" ",""))
			elsif @page == 3 && params[:commit] != "add tag"
				@tag_list = "#{params[:ig_hash_tag]}"
			elsif @page >= 6
				game = create
				tags = TagHelper.process_tags(params[:tag_list] || "")
				items = TagHelper.process_tags(params[:item_list] || "")
				tags.each do |tag_name|
					tag = Tag.find_by_name(tag_name)
					if tag != nil
					GameTag.create(
      		:game_id => game.id,
      		:tag_id => tag.id
      		)
					end
				end
				items.each do |item_name|
					item = Item.find_by_name(item_name)
					if item != nil
					GameItem.create(
      		:game_id => game.id,
      		:item_id => item.id
      		)
					end
				end
				redirect_to game_path(game)
			end
	end

	def tag_it(game, tag)
	end

	def untag_it
		game = Game.find_by_id(params[:id])
		current_user.remove_favorite(@game)
	end


	def create
		game = Game.create(
			:name        => params[:name],
			:ig_hash_tag => params[:ig_hash_tag],
			:photo       => params[:photo],
			:user_id     => params[:user_id],
			:min_players => params[:min_players],
			:max_players => params[:max_players],
			:blurb       => params[:blurb],
			:objective   => params[:objective],
			:gameplay    => params[:gameplay],
			:rules       => params[:rules],
			:additional_information => params[:additional_information],
			:min_player_age         => params[:min_player_age]
			)
	end

	def index
		@games = Game.all
		@game = Game.new
	end

	def show
		@game = Game.find_by_id(params[:id])
		@user = current_user
		@comment = Comment.new
		@comments = @game.comments
	end

	def edit
		@game = Game.find(params[:id])
	end

	def update
		game = Game.find(params[:id])
		game.update_attributes(game_attributes)
		redirect_to "/games/#{params[:id]}"
	end

	def process_tags

	end

	def add_photo(hash_tag)
		TempPhoto.delete_all
		url = "https://api.instagram.com/v1/tags/#{hash_tag}/media/recent?client_id=4103708a8bb2413ea434757ae68c811f"
		response = HTTParty.get(url)
		numbers = (0...20).to_a.sample 16
		numbers.each do |x|
			photo_url = response["data"][x]["images"]["standard_resolution"]["url"]
			instagram_username = response["data"][x]["user"]["username"]
			TempPhoto.create({
				name: instagram_username,
				photo_url: photo_url
				})
		end
	end

	def generate
		picture = TempPhoto.find_by_name(params[:name])
		game = Game.find_by_id(params[:game_id])
		game.photo = picture.photo_url
		game.save!
	end

	def delete
		id = params[:id]
		Game.delete(id)
		redirect_to '/'
	end

	def game_attributes
		params.require(:game).permit(:name, :ig_hash_tag, :photo, :user_id, :min_players, :max_players, :blurb, :objective, :gameplay, :rules, :additional_information, :min_player_age)
	end

end