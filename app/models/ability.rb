class Ability
  include CanCan::Ability

  def initialize(user)
    user ||= User.new # guest user
    if user.role? :super_admin
      can :manage, :all
    elsif user.role? :operator
      can [:update, :read], School, ['schools.id in (select su.school_id
                                        from schools_users su
                                        where su.user_id = ?)', user.id] do |school|
        school.editors.include?(user)
      end
    end
  end
end