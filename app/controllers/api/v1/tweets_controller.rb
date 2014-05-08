class API::V1::TweetsController < API::V1::APIController

  def index
    @tweets = client.search(current_user.twitter_handle)
  end

  private
    def client
       Twitter::REST::Client.new do |config|
         config.consumer_key = ENV["TWITTER_API_KEY"]
         config.consumer_secret = ENV["TWITTER_API_SECRET"]
       end
    end
end
