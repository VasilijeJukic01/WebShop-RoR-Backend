class ApplicationController < ActionController::Base
  include SessionsHelper

  def admin_user
    unless current_user.admin?
      flash[:danger] = "You do not have permission to perform this action."
      redirect_to(root_url, status: :see_other)
    end
  end

  def correct_user
    @user = User.find(current_user.id)
    unless current_user?(@user)
      flash[:danger] = "You do not have permission to perform this action."
      redirect_to(root_url)
    end
  end

end
