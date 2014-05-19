OmniAuth.config.logger = Rails.logger

Rails.application.config.middleware.use OmniAuth::Builder do
  provider :facebook, '464058933739719', ENV['FACEBOOK_APP_SECRET']
  provider :twitter, ENV["TWITTER_API_KEY"], ENV["TWITTER_API_SECRET"]
end