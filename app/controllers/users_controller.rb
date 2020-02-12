class UsersController < ApplicationController
  def new; end

  def create
    # @user = User.new(user_params)
    @user = User.new(username:params[:username], email:params[:email], password:params[:password])

    if @user.save
      render json: { params: params, status: 'saved' }, status: :ok
    else
      render json: @user.errors.full_messages
    end
  end

  private

  def user_params
    params.require(:user).permit(:username, :email, :password,
                                 :password_confirmation)
  end
end
