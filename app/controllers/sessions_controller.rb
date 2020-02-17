class SessionsController < ApplicationController

  def new
  end

  def create
    user = User.find_by(email: params[:session][:email].downcase)
    if user && user.authenticate(params[:session][:password])
      log_in(user)
      remember user
      redirect_to user, flash: {success: "Welcome!"}
    else
      flash[:success] = 'Email or Password is incorrect.'
      render 'new'
    end
  end

end
