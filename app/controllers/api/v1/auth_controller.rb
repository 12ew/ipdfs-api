
class Api::V1::AuthController < ApplicationController

  def create
    @user = User.find_by(email: params[:email])

    if @user && @user.authenticate(params[:password])
      token = encoded_token(@user)
      render json: {email: @user.email, id: @user.id, jwt: token, type: @user.class.name}, status: 200
    else
      render json: {error: 'Username or Password Invalid'}, status: 401
    end
  end

  def show
    if logged_in
      render json: {email: current_user.email, id: current_user.id, type: @user.class.name}, status: 200
    else
      render json: {error: 'Token Invalid'}, status: 401
    end
  end

end
