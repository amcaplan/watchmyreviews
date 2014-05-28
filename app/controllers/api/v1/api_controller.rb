class API::V1::APIController < ApplicationController
  before_action :verify_user
  respond_to :json

  protected
    def verify_user
      unless session[:user_id]
        render json: "Unauthorized Request", status: :unauthorized
      end
    end
end