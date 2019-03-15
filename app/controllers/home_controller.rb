class HomeController < ApplicationController
    before_action :set_management, only: [:office,:remote,:mtg,:holiday,:home]
    after_action :save, only: [:office,:remote,:mtg,:holiday,:home]
  def top
    @admins = Admin.all
    @d = Date.current
  end

  def office
    @admin.place = 'office'
    redirect_to root_path
  end

  def remote
    @admin.place = "remote"
    redirect_to root_path
  end

  def mtg
    @admin.place = 'mtg'
    redirect_to root_path
  end

  def holiday
    @admin.place = 'holiday'
    redirect_to root_path
  end

  def home
    @admin.place = 'home'
    redirect_to root_path
  end

  def manager
    @admins = Admin.all
  end


  private

  def set_management
    @admin = current_admin
  end

  def save
    @admin.save

  end

  def admin_params
    params.require(:admin).permit(:office)
   end
end
