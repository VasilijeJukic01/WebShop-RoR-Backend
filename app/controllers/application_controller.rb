class ApplicationController < ActionController::Base
  include SessionsHelper

  def admin_user
    redirect_to(root_url, status: :see_other) unless current_user.admin?
  end

  def correct_user
    @user = User.find(current_user.id)
    redirect_to(root_url) unless current_user?(@user)
  end

end
