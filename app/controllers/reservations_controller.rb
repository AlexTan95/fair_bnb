class ReservationsController < ApplicationController

	def new
		@booking = Reservation.new
	end

	def create
		@booking = Reservation.new(reservation_params)
		@booking.save
		redirect_to root_path
	end

	private

	def reservation_params
		params.require(:reservation).permit(:listing_id, :user_id, :start_date, :end_date)
	end
end
