class WelcomeController < ApplicationController
  before_filter :authenticate_user!, only: :picture
  def index
    render text: 'welcome on dummy 2'
  end

  def picture
    send_file "#{Rails.root}/public/images/rails.png", type: 'image/png', disposition: 'inline'
  end
end
