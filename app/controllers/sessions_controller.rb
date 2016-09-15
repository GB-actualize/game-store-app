class SessionsController < ApplicationController
  def new
    render 'new.html.erb'
  end

  def create
    user = User.find_by(email: params[:email])
    if user && user.authenticate(params[:password])
      session[:user_id] = user.id
      flash[:success] = 'Successfully logged in!'
      redirect_to '/games'
    else
      flash[:warning] = 'Invalid email or password!'
      redirect_to '/sessions'
    end
  end

  def destroy
    session[:user_id] = nil
    flash[:success] = 'Successfully logged out!'
    redirect_to '/games'
  end
end

