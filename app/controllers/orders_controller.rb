class OrdersController < ApplicationController
	
	def create
		carted_products = current_user.cart

		order = Order.new(
											user_id: current_user.id,
											subtotal: subtotal, 
											tax: tax, 
											total: total
											)

		subtotal = 0
		products.each do |carted_product|
			subtotal += carted_product.product.price * carted_product.quantity 
		end

		tax = subtotal * 0.09
		total = subtotal + tax

		order.save

		carted_products.update_all(status: "purchased", order_id: order.id )
	end

	

	def show
		@order = Order.find(params[:id])
	end

end
