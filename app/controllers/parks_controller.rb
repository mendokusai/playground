class ParksController < ApplicationController
	before_action :authenticate_user!, except: [:index, :show]


	def index
		if params[:location].present?
			unless params[:distance].present?
				params[:distance] = 5
			end
			@parks = Park.near(params[:location], params[:distance] || 4, order: :distance)
			params[:location] = nil
			params[:distance] = nil
		else	
			@parks = Park.all
		end
	end

	def new
		@park = Park.new
	end

	def create
		@park = Park.new(park_params)
		if @park.save
			redirect_to park_path(@park)
		else
			render :new
		end
	end

	def show
		@park = Park.find(params[:id])
		@users = User.all
		@zoom = 16 #default
	end

	def edit
		@park = Park.find(params[:id])
	end

	def update
		@park = Park.find(params[:id])
		if @park.update(park_params)
		else
			render :edit
		end
		redirect_to @park
	end

	def destroy
		@park = Park.find(params[:id])
		@park.destroy

		redirect_to parks_path
	end

	# def search
	# 	@parksearch = "this"
	# 	redirect_to parks_path
	# end

	private
		def park_params
			params.require(:park).permit(:name, :address, 
																		:city, :state, :description,
																		{equipment_ids:[]} )
		end

end

