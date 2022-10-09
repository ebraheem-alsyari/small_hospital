class ApplicationController < ActionController::Base
  before_action :authenticate_with_http_digest
  # before_action :authenticate_user!



  def self.index
    @details = Detail.search(params[:search])
  end



        def confirm_logged_in
          unless session[:user_id]
            flash[:notice] = "please log in,"
            redirect_to(sign_in_path)
          end
      end


end
