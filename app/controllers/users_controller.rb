# -*- encoding : utf-8 -*-
class UsersController < ApplicationController
  before_filter :get_user, :only => [:index,:new,:edit]
  before_filter :accessible_roles, :only => [:new, :edit, :show, :update, :create]
  load_and_authorize_resource :only => [:show,:new,:destroy,:edit,:update]

  active_scaffold :user do |conf|
    conf.columns = [:email, :mobile, :password, :roles, :city]
    conf.list.columns = [:id, :email, :mobile, :roles]
    conf.columns[:mobile].description = "Телефон в формате 79044418833"
  end

  # Get roles accessible by the current user
  #----------------------------------------------------
  def accessible_roles
    @accessible_roles = Role.accessible_by(current_ability,:read)
  end

  # Make the current user object available to views
  #----------------------------------------
  def get_user
    @current_user = current_user
  end

end