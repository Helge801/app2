class PagesController < ApplicationController
  def home
  end

  def about
  end

  def contact
  end

  def users
    @users = User.all
  end

  def upgrade
    @user = User.find(params[:id])
    if @user.has_roles?(:admin)
      @user.update(roles: [:user])
    else
      @user.update(roles: [:admin])
    end

    redirect_to pages_users_path
  end

end
