class Auth::PasswordResetsController < ApplicationController
  def new
  end

  def create
    @user = User.find_by_email(params[:email])

    if @user.present?
      # send email to the user
      PasswordMailer.with(user: @user).reset.deliver_now
    end
    redirect_to root_url, :notice => "Email sent with password reset instructions."
  end

  def edit
    @user = User.find_signed(params[:token], purpose: :password_reset)

    rescue ActiveSupport::MessageVerifier::InvalidSignature
      redirect_to auth_login_path, :alert => "Invalid password reset token. your token may have expired. please try again."
  end

  def update
    @user = User.find_signed(params[:token], purpose: :password_reset)

    if @user.update(password_params)
      redirect_to auth_login_path, :notice => "Password has been reset successfully. please sign in!"
    else
      render :edit
    end

  end

  private
  def password_params
    params.require(:user).permit(:password, :password_confirmation)
  end
end
