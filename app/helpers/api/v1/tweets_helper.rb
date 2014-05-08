module API::V1::TweetsHelper
  def average_sentiment(phrases)
    unless phrases.empty?
      phrases.map{|phrase| sentiment(phrase)}.inject(:+) / phrases.length
    end
  end

  def sentiment(phrase)
    Sentimental.new.get_score(phrase)
  end
end
