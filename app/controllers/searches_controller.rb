class SearchesController < ApplicationController

	def index
		if params[:search]
			@products = Product.search(params[:search]).order("created_at DESC")
		else
			@products = Product.all.oder('created_at DESC')
		end
	end

end