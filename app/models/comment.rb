class Comment < ActiveRecord::Base

	belongs_to :park

	validates :comment, length: { minimum: 8 }
end
