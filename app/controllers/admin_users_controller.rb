class AdminUsersController < ApplicationController
  
  layout "admin"

  before_action :confirm_logged_in

  def index
    @admin_users = AdminUser.sorted
  end

  def new
    @admin_user = AdminUser.new()
  end

  def create
    @admin_user = AdminUser.new(admin_user_params)
    if @admin_user.save
      flash[:success] = "Admin User was created successfully"
      redirect_to(:action => 'index')
    else
      flash[:error] = "Creation of Admin User failed"
      render('new')
    end
  end

  def edit
    @admin_user = AdminUser.find(params[:id])
  end

  def update
    @admin_user = AdminUser.find(params[:id])
    if @admin_user.update_attributes(admin_user_params)
      flash[:success] = "Admin User updated successfully"
      redirect_to(:action => 'index')
    else
      flash[:error] = "Update of Admin User failed"
      render('edit')
    end
  end

  def delete
    @admin_user = AdminUser.find(params[:id])
  end

  def destroy
    AdminUser.find(params[:id]).destroy
    flash[:notice] = "Admin user destroyed."
    redirect_to(:action => 'index')
  end

  private
    def admin_user_params
      params.require(:admin_user).permit(:username, :email, :password, :first_name, :last_name)
    end
end