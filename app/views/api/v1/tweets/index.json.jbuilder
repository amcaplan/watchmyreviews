json.averageSentiment average_sentiment(@tweets.map(&:text))
json.tweets do
  json.array!(@tweets) do |tweet|
    json.userHandle tweet.user.username
    json.userName tweet.user.name
    json.text tweet.text
    json.sentiment sentiment(tweet.text)
  end
end