class TopController < ApplicationController
  before_action :authenticate_user!

  def index
    redirect_to new_user_session_path unless user_signed_in?
  end
end
