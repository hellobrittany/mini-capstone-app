class Product < ApplicationRecord
	def sale_message
		# If an item is under $2, it returns the string “Discount Item!” - otherwise, it should return the string “Everyday Value!!” Then, have this message appear on the product’s show page.

		if price < 15 
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
end
