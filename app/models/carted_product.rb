class CartedProduct < ApplicationRecord
	belongs_to :user 
	belongs_to :product
	belongs_to :order, optional: true

	def calculate_subtotal(products)
	    subtot = 0
	    products.each do |carted_product|
	    	subtot += carted_product.product.price * carted_product.quantity 
	    end

	    self.subtotal = subtot
	  end

	 def calculate_tax
	    self.tax = subtotal * 0.09
	  end

	 def calculate_total
	    self.total = subtotal + tax
	  end

end
