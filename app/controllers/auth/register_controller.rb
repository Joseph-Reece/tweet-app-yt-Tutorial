class Auth::RegisterController < ApplicationController
  def new
    @user = User.new
  end

  def create
    # display text or variable =: render plain:
    # render plain: params[:user]

    @user = User.new(user_params)
    if @user.save
      session[:user_id] = @user.id
      redirect_to root_path, notice: "Thanks for signing up!"
    else
      render :new
    end

    
  end

  private
    def user_params
      params.require(:user).permit(:email, :password, :password_confirmation)
    end
end
