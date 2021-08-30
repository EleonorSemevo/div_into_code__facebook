class UsersController < ApplicationController
  before_action :set_user, only: %i[ show edit update destroy ]
  skip_before_action :login_required, only: [:new, :create]

  def show
  end
  def new
    @user = User.new
  end
  def edit
    if current_user.id != @user.id
      raise ActionController::RoutingError.new('Forbidden')
    end
  end
  def create
    @user = User.new(user_params)
      if @user.save
        #redirect_to user_path(@user.id)
        redirect_to new_session_path
      else
        render :new
      end
  end
  def update
    if @user.update(user_params)
      redirect_to @user, notice: "User was successfully updated."
    else
      render :edit, status: :unprocessable_entity
    end

  end

  private
  def set_user
    @user = User.find(params[:id])
  end

  def user_params
    params.require(:user).permit(:name, :email,:password, :password_confirmation, :profile_image)
  end
end

