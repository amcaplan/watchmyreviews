class API::V1::TweetsController < API::V1::APIController
  def index
    tweets = client.search('@' + @user.twitter_handle)
    render json: tweets
  end
end
