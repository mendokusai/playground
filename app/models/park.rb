class Park < ActiveRecord::Base
	geocoded_by :full_street_address
	after_validation :geocode

	has_many :comments
	has_many :users
	has_many :park_equipments
	has_many :equipments, through: :park_equipments 

	validates_presence_of :name, :address, :city, :state

	def full_street_address
		"#{address}, #{city}, #{state}"
	end

	def self.search(query)
		search_condition = "%" + query + "%"
		@parksearch = [search_condition, search_condition]
		# box = Geocoder::Calculations.bounding_box(query)
		# Park.within_bounding_box(box)
	end

end
