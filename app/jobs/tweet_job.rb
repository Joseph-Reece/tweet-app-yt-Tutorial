class TweetJob < ApplicationJob
  queue_as :default

  def perform(tweet)
    return if tweet.published?

    #do no tweet if publish time is in the past
    return if tweet.publish_at > Time.current

    tweet.publish_to_twitter!
  end
end