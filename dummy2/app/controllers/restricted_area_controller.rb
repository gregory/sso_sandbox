class RestrictedAreaController < ApplicationController
  before_filter :authenticate_user!
  def index
    render text: 'restricted area 2'
  end
end
