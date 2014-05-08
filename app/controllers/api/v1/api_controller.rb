class API::V1::APIController < ApplicationController
  before_action :verify_user
  respond_to :json

  protected
    def verify_user
      if params[:user_id] && session[:user_id].to_s != params[:user_id]
        render json: "No searching for another user!", status: :unauthorized
      elsif !params[:user_id]
        render json: "No user specified", status: :unauthorized
      end
    end
end