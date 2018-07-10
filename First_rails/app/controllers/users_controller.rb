class UsersController < ApplicationController
  def index
    render plain: "I'm in the index action!"
  end
  
  def create
    user = User.new(user_params)
    user.save!
    render json: user
  end
  
  private
  
  def user_params
    params.require(:user).permit(:name, :email)
  end
  
  
end