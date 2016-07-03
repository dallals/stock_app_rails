class WelcomesController < ApplicationController


	def index
		@user_stocks = current_user.stocks
  		puts "user stocks"
  		# puts @user_stocks
  		@user = current_user
	end



end