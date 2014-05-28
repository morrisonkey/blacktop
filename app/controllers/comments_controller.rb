class CommentsController < ApplicationController
  before_action :require_login, only: [:create, :destroy]

  def create
    Comment.create(user: current_user, game_id: params[:game_id], body: params[:comment][:body])
    redirect_to game_path(Game.find_by_id(params[:game_id])) #current ID needed
  end

  def delete
    id = params[:id]
    game_id = Comment.find_by_id(id).game_id
    Comment.delete(id)
    redirect_to game_path(Game.find_by_id(game_id))
  end

end