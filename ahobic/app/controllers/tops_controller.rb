class TopsController < ApplicationController

  def index
    if user_signed_in?
    @user = current_user.usercode
    end
  end

end
