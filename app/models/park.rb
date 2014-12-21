class Park < ActiveRecord::Base
	geocoded_by :full_street_address
	after_validation :geocode

	has_many :comments

	validates_presence_of :name, :address, :city, :state

	def full_street_address
		"#{address}, #{city}, #{state}"
	end


end
