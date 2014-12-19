class Park < ActiveRecord::Base
	has_many :comments

	validates_presence_of :name, :address, :city
end
