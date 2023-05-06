class Post < ApplicationRecord
  has_many :comments
  has_many :likes
  belongs_to :user, class_name: 'User'

  validates :title, presence: true, length: { maximum: 250 }
  validates :comments_counter, :likes_counter_integer, numericality: { only_integer: true, greater_than_or_equal_to: 0 }

  after_save :update_post_counter

  def update_post_counter
    user.update(posts_counter: user.posts.count)
  end

  def five_recent_comments
    comments.order(created_at: :desc).limit(5)
  end
end
