class AdminsController < ApplicationController
  def index
    @admin = Admin.new
  end

  def new
  end

  def create
    @admin = Admin.new(admin_params)
    if @admin.save
      flash[:notice] = 'Welcome #{@admin.email}'
      redirect_to courses_path
    else
      flash[:alert] = 'There was a problem creating your account'
      redirect_to :back
    end
  end

  private
  def admin_params
    params.require(:admin).permit(:email, :password, :password_confirmation)
  end
end
