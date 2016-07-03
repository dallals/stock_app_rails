class WelcomesController < ApplicationController
	skip_before_action :authenticate_user!, only: [:index]


	def index
		if current_user
			@user_stocks = current_user.stocks
	  		puts "user stocks"
	  		# puts @user_stocks
	  		@user = current_user
  		end
	end



end