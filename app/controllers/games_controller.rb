class GamesController < ApplicationController

	# before_action :authenticate_with_basic_auth
	# before_save :process_tags
  before_action :require_login, only: [:create, :new, :edit, :update, :delete]

	def new
		@game = Game.new
	end

	def create
		Game.create(game_attributes)
		redirect_to "/user/#{@current_user.id}/home"
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
		render partial: "gameform", locals: { game_local: @game, user_id: @game.user_id }
	end

	def update
		game = Game.find(params[:id])
		game.update_attributes(game_attributes)
		redirect_to "/games/#{params[:id]}"
	end

	def process_tags

	end

	def delete
		id = params[:id]
		Game.delete(id)
		redirect_to '/'
	end

	def game_attributes
		params.require(:game).permit(:name, :ig_hash_tag, :photo, :user_id, :min_players, :max_players, :blurb, :objective, :gameplay, :rules, :additional_information)
	end

end