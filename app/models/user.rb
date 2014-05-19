class User < ActiveRecord::Base

  def self.from_omniauth(auth, current_user = nil)
    if auth.provider == 'facebook'
      (current_user || where(fb_uid: auth.uid).first_or_initialize).tap do |user|
        user.fb_uid = auth.uid
        user.name ||= auth.info.name
        user.fb_oauth_token = auth.credentials.token
        user.fb_oauth_expires_at = Time.at(auth.credentials.expires_at)
        user.save!
      end
    elsif auth.provider == 'twitter'
      binding.pry
      (current_user || where(twitter_uid: auth.uid).first_or_initialize).tap do |user|
        user.twitter_uid = auth.uid
        user.name ||= auth.info.name
        user.twitter_handle = auth.extra.raw_info.screen_name
        user.twitter_oauth_token = auth.credentials.token
        user.twitter_secret = auth.credentials.secret
        user.save!
      end
    end
  end
end
