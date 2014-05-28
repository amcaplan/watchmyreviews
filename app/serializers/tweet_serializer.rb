class Twitter::Tweet
  include ActiveModel::SerializerSupport
end

class TweetSerializer < ActiveModel::Serializer
  attributes :id, :user_name, :user_handle, :text, :sentiment

  def user_name
    object.user.username
  end

  def user_handle
    object.user.username
  end

  def user_name
    object.user.name
  end

  def sentiment
    Sentimental.new.get_score(object.text)
  end
end