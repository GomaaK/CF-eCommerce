class Ability
  include CanCan::Ability

  def initialize(user)
    user ||= User.new # guest user (not logged in)
    can :manage, User, id: user.id # Modify ability to make user profile visible
    can :manage, Product

    if user.admin?
      can :destroy, Comment
    end
  end
end