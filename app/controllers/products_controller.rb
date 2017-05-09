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

		flash[:success] = "Product Successfully Created"
		redirect_to "/products/#{product.id}"
	end

	def edit
		@product = Product.find(params[:id])
	end

	def update
	product = Product.find(params[:id])
		product.assign_attributes(
															name: params[:name], 
															image: params[:image], 
															description: params[:description], 
															price: params[:price])
		product.save
		flash[:success] = "Product successfully updated"
		redirect_to "/products/#{product.id}"
	end

	def destroy
		product = Product.find(params[:id])
		product.destroy

		flash[:warning] = "Product destroyed"
		redirect_to "/"
	end
end
