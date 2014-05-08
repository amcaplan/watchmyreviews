class API::V1::APIController < ApplicationController
  before_action :verify_user

  protected
    def verify_user
      if params[:user_id]
      else
        render json: "No user specified", status: :unauthorized
      end
    end
end