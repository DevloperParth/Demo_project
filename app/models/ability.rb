class Ability
  include CanCan::Ability

  def initialize(user)
    can :read, Project, public: true
    user ||= User.new # guest user (not logged in)
    if user.user_type == 'Admin'
      can :manage, :all
    else
      can :read, :Project
    end
  end
end
