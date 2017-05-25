class CartedProductsController < ApplicationController
	def index
		

		if current_user && current_user.cart.any?
			@carted_products = current_user.cart
		else
			flash[:warning]	= "Why don't you add some wine to your cart?!"
			redirect_to '/'
		end
	end

	def create
		carted_product = CartedProduct.new(quantity: params[:quantity], 
																					user_id: current_user.id, 
																					product_id: params[:product_id], 
																					status: "Carted!")
		carted_product.save
		flash[:success] = "Item added to cart!"
		redirect_to '/carted_products'
	end

	def destroy
		carted_product = CartedProduct.find(params[:id])
		carted_product.update(status: "removed")
		flash[:success] = "Item removed from cart"
		redirect_to '/carted_products'
	end
end
