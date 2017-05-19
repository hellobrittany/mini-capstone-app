class OrdersController < ApplicationController
	def new
	end

	def create
		order = Order.new(
											product_id: params[:product_id], 
											user_id: current_user.id, 
											quantity: params[:quantity] 
											# subtotal: params[:subtotal], 
											# tax: params[:tax],
											# total: params[:total]
											)
		if order.save
			redirect_to "/orders/#{order.id}"
		end

	end

	def show
		@order = Order.find(params[:id])
	end

end
