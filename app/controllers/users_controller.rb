class UsersController < ApplicationController
  before_action :authenticate_user!, only: :show

  # devise  :database_authenticatable, :registerable,
  #         :recoverable, :rememberable, :trackable, :validatable

  def index
    @users = User.all
  end

  def profile
    @user = current_user
    render 'users/profile'
  end

  def show
    @user = User.find(params[:id])
    render 'users/show'
  end

end
