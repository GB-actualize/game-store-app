class UsersController < ApplicationController
  def new
  end

  def create
    user = User.new( 
      name: params[:name],
      email: params[:email],
      password: params[:password],
      password_confirmation: params[:password_confirmation],
      user: false)

    if user.save
      session[:user_id] = user.id
      flash[:success] = 'Successfully created ID'
      redirect_to '/games'
    else
      flash[:flash] = 'Invalid email or password'
      redirect_to '/signup'
    end
  end
end
