class Product < ApplicationRecord
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
end
