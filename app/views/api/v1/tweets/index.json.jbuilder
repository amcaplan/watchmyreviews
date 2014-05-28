json.tweets do
  json.array!(@tweets) do |tweet|
    json.id tweet.id
    json.user_handle tweet.user.username
    json.user_name tweet.user.name
    json.text tweet.text
    json.sentiment sentiment(tweet.text)
  end
end