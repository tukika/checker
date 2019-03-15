class ApplicationController < ActionController::Base
  before_action :authenticate_admin!
  #after_filter:after_login, :only=>:test
  def test
  end

  # private
  #
  # def after_login
  #   current_user.update(first_sign_in_at: current_user.current_sign_in_at) unless current_user.first_sign_in_at
  # end
end
