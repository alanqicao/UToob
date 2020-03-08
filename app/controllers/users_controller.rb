class UsersController < ApplicationController
  before_action :set_user, only: [:edit, :update, :destroy]
  
  def index
  end

  def show
  end

  def new
  end

  def edit
    #Before Action
  end

  def update
    #Before Action
    if user.update(user_params)
      redirect_to movie_path
    end
  end

  def destroy
    #Before Action
  end

  private

  def set_user
    @user = User.find(user_params[:id])
  end

  def user_params
    params.require(:user).permit(:email)
  end

end
