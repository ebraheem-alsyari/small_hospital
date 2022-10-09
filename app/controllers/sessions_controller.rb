class SessionsController < ApplicationController


  def new

  end


  def create

    user = User.find_by(email: params[:email])
    if user.present? && user.authenticate(params[:password])
      session[:user_id] = user.id
      redirect_to root_path, notice: "Logged in successfully"
    else
      # notice: 'Invalid email or password'
      flash[:notice] = "Invalid email or password"
      render :new
    end
  end



  def destroy
    session[:user_id] = nil
    redirect_to root_path, message: "Logged out "
    flash[:notice] = "Logged out successfully"
  end
end
