class StocksController < ApplicationController
before_action :show_stock, only: [:show]

	def search
		if params[:stock]
			@stock = Stock.find_by_ticker(params[:stock])
			@stock ||= Stock.new_from_lookup(params[:stock])
		end


		if @stock
			# render json: @stock
			render partial: 'lookup'

		else
			render status: :not_found, nothing: true
		end

	end

	def show
		
	end


	private

	def show_stock
		@stock = Stock.find(params[:id])
	end


end
