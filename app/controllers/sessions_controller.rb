class SessionsController < ApplicationController
  #skip_before_action :require_login, except: [:destroy]

  def authenticate_user
    #@user = User.find_by_username(params[:username])

    if user = login(params[:username], params[:password])
      render json: payload(user)
      #redirect_to reservations_path
    else
      render json: {errors: ['Invalid Username/Password']}, status: :unauthorized
    end
  end

  def create
    if login(params[:username], params[:password])
      flash[:success] = 'Welcome back!'
      redirect_back_or_to root_path
    else
      flash[:warning] = 'E-mail and/or password is incorrect.'
      render 'new'
    end
  end

  def destroy
    logout
    flash[:success] = "See you!"
    redirect_to login_path
  end

  private
  def payload(user)
    return nil unless user and user.id
    {
      auth_token: JsonWebToken.encode({user_id: user.id}),
      user: {id: user.id, username: user.username}
    }
  end
end
