class API::V1::TweetsController < API::V1::APIController
  def index
    tweets = client.search('@' + @user.twitter_handle)
    render json: tweets
  end

  private
    def client
      Twitter::REST::Client.new do |config|
        config.consumer_key        = ENV["TWITTER_API_KEY"]
        config.consumer_secret     = ENV["TWITTER_API_SECRET"]
      end
    end
end
