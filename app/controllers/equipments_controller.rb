class EquipmentsController < ApplicationController
	def index
		@equip = Equipment.all
	end
end
