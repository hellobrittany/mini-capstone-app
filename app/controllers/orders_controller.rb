class OrdersController < ApplicationController
	
	def create
		order = Order.new(
											product_id: params[:product_id], 
											user_id: current_user.id, 
											quantity: params[:quantity], 
											)
		order.calculate_subtotal
		order.calculate_tax
		order.calculate_total

		if order.save
			redirect_to "/orders/#{order.id}"
		end

	end

	def show
		@order = Order.find(params[:id])
	end

end
