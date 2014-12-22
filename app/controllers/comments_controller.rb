class CommentsController < ApplicationController
	before_action :authenticate_user!, only: [:create]
	before_action :authorize_admin!, only: [:delete]

	def create
		@park = Park.find(params[:park_id])
		@user = current_user
		@comment = @park.comments.create(comment_params)
		redirect_to park_path(@park)
		
	end

	def destroy
		@park = Park.find(params[:park_id])
		@comment = @park.comments.find(params[:id])
		@comment.destroy

		redirect_to park_path(@park)
	end

	private
	def comment_params
		params.require(:comment).permit(:comment)
	end
end
