class Comment < ActiveRecord::Base

	belongs_to :user

	validates :comment, length: { minimum: 8 }
end
