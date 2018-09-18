class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.create(clean_user)
    if @user.save
      login(@user)
      redirect_to subs_url
    else
      flash.now[:errors] = @user.errors.full_messages
      render :new
    end

  end
end
