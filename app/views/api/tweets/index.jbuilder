Jbuilder.encode do |json|
  json.array! @tweets do |tweet|
    json.twitter_handle tweet[:user][:name]
    json.text tweet[:text]
  end
end