class Hashtag < ApplicationRecord
  has_many :hashtag_posts
  has_many :posts, through: :hashtag_posts
  validates :hashname, presence: true, length: {maximum:50}
end
