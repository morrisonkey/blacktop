class User < ActiveRecord::Base

  has_secure_password #changed

  has_many :games
  has_many :games, through: :favorites
  has_many :favorites
  

  before_validation :downcase_email, :upcase_name

  validates_confirmation_of :password
  validates_presence_of :password, :on => :create
  validates_presence_of :email
  validates_uniqueness_of :name, :email

  def downcase_email
    self.email = email.downcase
  end

  def upcase_name
    self.name = name.upcase
  end

  def add_favorite(game)
    self.favorites << Favorite.create({
      user_id: self.id,
      game_id: game.id
      })
    redirect_to '/games'
  end

  def remove_favorite(game_id)

    game = Favorite.find_by_user_id_and_game_id(current_user.id, game_id)
    game.destroy

  end

end
