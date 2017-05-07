class ProductsController < ApplicationController
	def index
		@products = Product.all 
	end

	def show
		product_id = params[:id]
		@product = Product.find_by(id: product_id)
	end

	def new
		
	end

	def create
		product =	Product.new(
												name: params[:name], 
												image: params[:image], 
												description: params[:description], 
												price: params[:price] 
												)
		product.save
	end
end
