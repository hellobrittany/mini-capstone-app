class CartedProductsController < ApplicationController
	def index
		@carted_products = CartedProduct.where(status: "Carted!", user_id: current_user.id)
	end

	def create
		carted_products = CartedProduct.new(quantity: params[:quantity], 
																					user_id: current_user.id, 
																					product_id: params[:product_id], 
																					status: "Carted!")
		carted_products.save
		redirect_to '/carted_products'
	end
end
