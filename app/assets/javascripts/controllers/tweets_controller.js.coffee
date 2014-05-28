Watchmyreviews.TweetsController = Ember.ArrayController.extend({
  itemController: 'tweet'

  averageSentiment: (->
    sentiments = @getEach('sentiment')
    sum = sentiments.reduce((a, b)-> a + b)
    Math.round(sum / sentiments.length * 5) + 2.5
  ).property('tweets.@each.sentiment')
  
  sentimentSmiley: (->
    sentiment = @get('averageSentiment')
    if sentiment >= 4
      ":-)"
    else if sentiment <= 2
      ":-("
    else
      ":-|"
  ).property('averageSentiment')
})