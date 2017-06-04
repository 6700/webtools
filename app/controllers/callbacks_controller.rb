class CallbacksController < ApplicationController
  def github
    @user = User.from_omniauth(request.env["omniauth.auth"])
    sign_in_and_redirect @user
  end

  def failure
    redirect_to root_path
  end
end
