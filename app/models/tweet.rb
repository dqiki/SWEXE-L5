class Tweet < ApplicationRecord
    has_many :users
    has_many :likes
    has_many :like_tweets, through: :likes, source: :tweet
end
