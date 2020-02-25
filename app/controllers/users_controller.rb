class UsersController < ApplicationController

  def index
    users = User.all
    render json: users
  end
  
  def create
    user = User.find_or_create_by(user_params)
    render json: user
    # user = User.new(user_params)
    # if user.save 
    #   render json: user
    # else 
    #   render json: {error: "Email is already taken"}
    # end
  end

  # def login
  #   if params[:password] == User.find_by(email: User.email)
  #   user = User.find(params[:id])
  #   render json: user
  # end

  def show
    user = User.find(params[:id])
    render json: user
  end

  def edit
    user = User.find(params[:id])
    render json: user
  end

  def update
    user = User.find(params[:id])
    user.update(user_params)
    render json: user
  end

  



  private
  def user_params
    params.require(:user).permit(:email, :password, :password_confirmation, :first_name, :last_name, :address )
  end

end
