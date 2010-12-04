class ApplicationController < ActionController::Base
  protect_from_forgery

#  rescue_from CanCan::AccessDenied do |exception|
#    flash[:error] = exception.message
#    redirect_to root_url
#  end

  ActiveScaffold.set_defaults do |config|
    config.ignore_columns.add [:created_at, :updated_at, :password_salt, :encrypted_password,
                                :unlock_token, :last_sign_in_at, :last_sign_in_ip]
  end
end
