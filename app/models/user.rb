class User < ApplicationRecord
    belongs_to :tweets
    has_many :likes
    has_many :like_users, through: :likes, source: :user
end
