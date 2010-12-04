require "russian_text"
class SchoolsController < ApplicationController
  before_filter :accessible_roles
  load_and_authorize_resource

  include RussianText

  active_scaffold :school do |conf|
    conf.columns.exclude :editors
    conf.list.columns =  [:title, :address, :city, :editors]
  end

  # Get roles accessible by the current user
  #----------------------------------------------------
  def accessible_roles
    @accessible_roles = Role.accessible_by(current_ability)
  end

  #установим админа создателем этой записи
  def before_create_save(record)
    record.editors << current_user
    record.title = super_capitalize(record.title)
  end

end