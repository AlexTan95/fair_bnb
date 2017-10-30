class UsersController < ApplicationController
	def index
		@listing = Listing.order(:created_at => :DESC).page params[:page]
	end

	def new
	end

	def edit
	end

	
	# def new
	# 	@user = User.new
	# 	# next step it will go to app/views/users/new.html.erb
	# end

# 	def create
# @user = User.new(params[:user])
# 	end
end
