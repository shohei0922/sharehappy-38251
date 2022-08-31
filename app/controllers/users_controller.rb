class UsersController < ApplicationController

  def edit
  end

  def update
    if current_user.update(user_params)
      redirect_to events_path
    else
      render :edit
    end

  end

  private

  def user_params
    params.require(:user).permit(:nickname, :email, :password)
  end
end