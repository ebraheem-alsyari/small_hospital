class RegistrationsController < ApplicationController 


	def new
		@user = User.new
	end



	def create
		render plain: "thanks!"
	end



end