class Api::V1::ApiController < ApplicationController
  include Api::V1::Concerns::CurrentUserConcern

  def current_user
    @current_user
  end
  
  def user_signed_in?
    if current_user
      return true
    else
      return false
    end
  end

  def require_user
    if !user_signed_in?
      puts(session.session_id)

      render json: {
        status: 401,
        session_id: session[:user_id]
      }
    end
  end
end
