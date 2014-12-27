class Comment < ActiveRecord::Base

	belongs_to :park
	has_one :user

	validates :comment, length: { minimum: 8 }
end
