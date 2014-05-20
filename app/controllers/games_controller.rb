class GamesController < ApplicationController

	# before_action :authenticate_with_basic_auth
	# before_save :process_tags
	# before_action :require_login, only: [:create, :new, :edit, :update, :delete]

	def new
		if params[:page]
			@page = params[:page].to_i + 1
		else
			@page = 1
		end
		if @page == 2
			add_photo(params[:ig_hash_tag])
		end
		if @page >= 5
			create
		end
	end

	def create
		# binding.pry
		game = Game.create(game_attributes)
		# binding.pry
		redirect_to "/add_photo/games/#{game.id}"
	end

	def index
		@games = Game.all
		@game = Game.new
	end

	def show
		@game = Game.find_by_id(params[:id])
		@user = current_user
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