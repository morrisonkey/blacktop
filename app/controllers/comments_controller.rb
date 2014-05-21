class CommentsController < ApplicationController

  def create
    Comment.create(user: current_user, game_id: params[:game_id], body: params[:comment][:body])
    redirect_to "/games/#{params[:game_id]}"
  end

  def delete
    id = params[:id]
    game_id = Comment.find_by_id(id).game_id
    Comment.delete(id)
    redirect_to "/games/#{game_id}"
  end

end