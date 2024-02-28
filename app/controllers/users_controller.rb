class UsersController < ApplicationController
  before_action :authenticate_user!

  def account_show
    @user = current_user
    #@room = Room.new
  end

  def profile_show
    @user = current_user
  end

  def profile_edit
    @profile_user = current_user
  end

  def profile_update
    @user = current_user
    if current_user.update(user_params)
      redirect_to profile_show_path
    else
      render 'profile_edit'
    end
  end

  private
  def user_params
    params.require(:user).permit(:name, :email, :password, :avatar, :bio)
  end
end
