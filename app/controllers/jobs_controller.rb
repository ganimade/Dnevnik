class JobsController < ApplicationController
  before_filter :accessible_roles
  load_and_authorize_resource

  active_scaffold :job do |conf|
  end

  # Get roles accessible by the current user
  #----------------------------------------------------
  def accessible_roles
    @accessible_roles = Role.accessible_by(current_ability)
  end

end 