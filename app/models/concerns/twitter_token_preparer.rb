module TwitterTokenPreparer

  def client
     @client ||= Twitter::REST::Client.new do |config|
       config.consumer_key = ENV["TWITTER_API_KEY"]
       config.consumer_secret = ENV["TWITTER_API_SECRET"]
     end
  end

  def access_token
    token_hash = { oauth_token: ENV["TWITTER_API_KEY"],
                   oauth_token_secret: ENV["TWITTER_API_KEY"] }
    OAuth::AccessToken.from_hash(oauth_consumer, token_hash)
  end

  def oauth_consumer
    OAuth::Consumer.new("APIKey", "APISecret",
      { site: "https://api.twitter.com",
        request_token_path: '/oauth/request_token',
        access_token_path: '/oauth/access_token',
        authorize_path: '/oauth/authorize',
        scheme: :header
      })
  end

end