class ParkEquipment < ActiveRecord::Base
	belongs_to :park
	belongs_to :equipment
end
