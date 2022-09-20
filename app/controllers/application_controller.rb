class ApplicationController < ActionController::Base
  private

  def require_login
    unless current_user
      redirect_to new_user_registration_path, :alert => 'Sign up or Log in to see the events!'
    end
  end
end
