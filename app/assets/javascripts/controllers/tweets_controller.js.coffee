Watchmyreviews.TweetsController = Ember.ArrayController.extend({
  itemController: 'tweet'
  averageSentiment: (->
    sentiments = this.getEach('sentiment')
    sum = sentiments.reduce((a, b)-> a + b)
    Math.round(sum / sentiments.length * 10) / 10
  ).property('tweets.@each.sentiment')
  sentimentSmiley: (->
    sentiment = this.get('averageSentiment')
    if sentiment > 0.2
      ":-)"
    else if sentiment < -0.2
      ":-("
    else
      ":-|"
  ).property('averageSentiment')
})