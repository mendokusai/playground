class ParksController < ApplicationController
	
	def index
		@parks = Park.all
	end

	def new
		@park = Park.new
	end

	def create
		@park = Park.new(park_params)
		if @park.save
			redirect_to @park
		else
			render 'new'
		end
	end

	def show
		@park = Park.find(params[:id])
	end

	def edit
		@park = Park.find(params[:id])
	end

	def update
		@park = Park.new(park_params)
		if @park.save
			redirect_to @park
		else
			render 'edit'
		end
	end

	def destroy
		@park = Park.find(params[:id])
		@park.destroy

		redirect_to parks_path
	end

	private
		def park_params
			params.require(:park).permit(:name, :address, 
																		:city, :state, :description)
		end

end

