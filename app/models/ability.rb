class Ability
  include CanCan::Ability

  def initialize(user)
    user ||= User.new

    can [:new, :create], Post
    can [:index, :show], Post, published: true
    can [:edit, :update, :destroy], Post, user_id: user.id

  end
end
