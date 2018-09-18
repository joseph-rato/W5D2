class SessionsController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = find_by_cred(params[:user][:username], params[:user][:password])
    if @user
      login(@user)
      redirect_to subs_url
    else
      flash.now[:errors] = ["No combo of password and username"]
      render :new
    end
  end

  def destroy
    logout
    redirect_to new_session_url
  end
end
