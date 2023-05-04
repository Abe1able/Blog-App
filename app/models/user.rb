class User < ApplicationRecord
  has_many :posts, class_name: 'Post', foreign_key: 'author_id'
  has_many :likes, foreign_key: 'author_id'
  has_many :comments, foreign_key: 'author_id'

  def three_posts
    posts.order(created_at: :desc).limit(3)
  end
end
