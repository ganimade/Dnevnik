class WelcomeController < ApplicationController
  #, :except => [:index]
  before_filter :authenticate_user!
  def index
    #@things = current_user.things
    @current_user = current_user
  end

end
