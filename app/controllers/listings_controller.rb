class ListingsController < ApplicationController

	def new
		@new_listing = Listing.new
	end

	 def create
	 	@new_listing = Listing.new(listing_params)
		@new_listing.save
	 	redirect_to root_path
	 end

	 def show
	 	@listing = Listing.find(params[:id])
	 end


	 private
	 def listing_params
	      params.require(:listing).permit(:user_id, :title, :property_type, :address, :city, :country, :no_of_bed, :no_of_bathroom, :max_guest, :price, :description)
	 end
end
