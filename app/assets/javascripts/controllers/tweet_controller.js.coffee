Watchmyreviews.TweetController = Ember.ObjectController.extend {
  sentimentClass: (->
    sentiment = @get('sentiment')
    if sentiment > 0.2
      'success'
    else if sentiment < -0.2
      'danger'
    else
      'info'
    ).property('sentiment')
  userURL: (->
    "http://twitter.com/" + @get('userHandle')
  ).property('userHandle')
}