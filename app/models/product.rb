class Product < ApplicationRecord
	belongs_to :supplier
	

	def sale_message
		if discounted? 
			 "Discount Item!"
		else
			 "Everyday Value!!"	
		end	

	end

	def tax
		price * 0.09
	end

	def total_cost
		price + tax
	end

	def discounted?
		price < 15
	end

	def in_stock?
		
	end
end
