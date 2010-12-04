class CitiesController < ApplicationController
  before_filter :accessible_roles
  load_and_authorize_resource

  active_scaffold :city do |conf|
    conf.columns[:users].form_ui = :select
    conf.columns[:country].form_ui = :select
  end

  # Get roles accessible by the current user
  #----------------------------------------------------
  def accessible_roles
    @accessible_roles = Role.accessible_by(current_ability)
  end

end 