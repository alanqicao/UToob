class UsersController < ApplicationController

  # def index
  # end

  # def show
  # end

  # def new
  # end

  def edit
    @user 
  end

  def update
  end

  def destroy
  end

  private

  def set_user
    @user = User.find(user_params)
  end
  
end
