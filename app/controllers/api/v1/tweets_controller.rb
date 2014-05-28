class API::V1::TweetsController < API::V1::APIController

  def index
    @tweets = client.mentions_timeline
    if @tweets.length < 20
      new_tweets = client.search(current_user.twitter_handle, count: 45).entries
      @tweets += tweets_not_from_user(new_tweets, current_user).take(20)
    end
    @tweets = @tweets.uniq
    render json: ActiveModel::ArraySerializer.new(@tweets, each_serializer: TweetSerializer)
  end

  private
    def client
      @client ||= Twitter::REST::Client.new do |config|
        config.consumer_key        = ENV["TWITTER_API_KEY"]
        config.consumer_secret     = ENV["TWITTER_API_SECRET"]
        config.access_token        = current_user.twitter_oauth_token
        config.access_token_secret = current_user.twitter_secret
      end
  end

  def tweets_not_from_user(tweets, user)
    tweets.select do |tweet|
      tweet.user.username != user.twitter_handle
    end
  end
end
