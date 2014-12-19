class Park < ActiveRecord::Base
	validates_presence_of :name, :address, :city
end
