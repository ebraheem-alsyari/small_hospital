class MainController < ApplicationController
  before_action :authenticate_with_http_digest


  def index
    if session[:user_id]
      @user = User.find(session[:user_id])
    end
  end

end
