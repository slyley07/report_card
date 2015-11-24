class SessionsController < ApplicationController
  def new
    @admin = Admin.new
  end

  def create
    @admin = Admin.authenticate(params[:email], params[:password])
    if @admin
      flash[:notice] = 'You have been logged in'
      session[:admin_id] = @admin.id
      redirect_to '/'
    else
      flash[:alert] = 'There was problem logging you in'
      redirect_to signin_path
    end
  end

  def destroy
    session[:user_id] = nil
    flash[:notice] = 'You have been logged out successfully'
    redirect_to '/'
  end
end
