class Api::V1::CurrentUserController < ApplicationController
  #before_action :authenticate_user!
  def index
    @current_user = current_user
    render json: @current_user, status: :ok
  end
end
