class ApplicationController < ActionController::Base
  protect_from_forgery

  rescue_from CanCan::AccessDenied do |exception|
   redirect_to root_url , alert: "You can't access this page"
  end

  before_filter :set_last_active, if: proc { user_signed_in? }

  private
  def set_last_active
    current_user.update_attribute(:last_active, Time.now.utc.to_i)
  end
  
end
