class RestrictedAreaController < ApplicationController
  before_filter :reset_token!

  def index
  end
private
  def reset_token!
    authenticate_user!
    current_user.reset_authentication_token!
  end
end
