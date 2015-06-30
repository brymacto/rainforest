class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def show
    if current_user
      @user = current_user
    else
      redirect_to products_url, notice: "Error, you are not signed in"
    end
  end


  def create
    @user = User.new(user_params)
    if @user.save
      redirect_to products_url, notice: "Signed up!"
    else
      render "new"
    end
  end

  private
  def user_params
    params.require(:user).permit(:email, :password, :password_confirmation, :name)
  end
end