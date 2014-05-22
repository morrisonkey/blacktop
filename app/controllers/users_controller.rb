class UsersController < ApplicationController

  # before_action :authenticate_with_basic_auth
  before_action :require_login, only: [:edit, :delete]
  

  def show
    @user = User.find_by_id(params[:id])
    @game = Game.new
    @games = Game.all
  end

  def home
    @user = User.find_by_id(params[:id])
    @games = Game.all
  end

  def new
    @user = User.new
  end

  def login

  end

  def user_attributes
    params.require(:user).permit(:name, :hashed_password, :last_login)
  end

  def favorite
    @game = Game.find_by_id(params[:id])
    current_user.add_favorite(@game)
    redirect_to "/games/#{@game.id}"
  end

  def unlike
    @game = Game.find_by_id(params[:id])
    current_user.remove_favorite(@game)
    redirect_to "/games/#{@game.id}"
  end


  def end_session
    authenticate_or_request_with_http_basic do
      @current_user = User.authenticated?(false, false)
    end
    # redirect_to "/games"
  end

  def create
    @user = User.new(user_params)
    if @user.save
      redirect_to root_url, :notice => "Signed up!"
    else
      render "new"
    end
  end

  private

  def user_params
    params.require(:user).permit(:name, :email, :password, :password_confirmation)
  end

end