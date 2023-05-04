class Post < ApplicationRecord
	has_many :comments
	has_many :likes
	belongs_to :author, class_name: 'User'

	after_save :update_post_counter

	def update_post_counter
		author.update(posts_counter: author.posts.count)
	end

	def five_recent_comments
		comments.order(created_at: :desc).limit(5)
	end
end
