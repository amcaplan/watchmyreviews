Watchmyreviews.TweetsRoute = Ember.Route.extend
  model: ->
    @store.findAll('tweet')