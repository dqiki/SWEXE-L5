class User < ApplicationRecord
    has_many :likes
    has_many :like_tweets, through: :likes, source: :user
end
