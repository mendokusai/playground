class EquipmentsController < ApplicationController
	before_action :authenticate_user!, except: [:index, :show]

	def index
		@equips = Equipment.all
	end

	def new
		@equip = Equipment.new
	end

	def create
		@equip = Equipment.new(equip_params)
		if @equip.save
			redirect_to equipment_path(@equip)
		else
			render :new
		end
	end

	def show 
		@equip = Equipment.find(params[:id])
	end

	def edit
		@equip = Equipment.find(params[:id])
	end

	def update
		@equip = Equipment.find(params[:id])
		if @equip.update(equip_params)
		else
			render :edit
		end
		redirect_to @equip
	end

	def destroy
		@equip = Equipment.find(params[:id])
		@equip.destroy
		redirect_to equipment_path
	end

	private
		def equip_params
			params.require(:equipment).permit(:name, :description, :age_range)
		end

end
