class API::V1::FbPostsController < ApplicationController
  respond_to :json
  
  def index
    render json: '{"hello":"world"}'
  end
end
