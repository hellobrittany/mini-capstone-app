class Product < ApplicationRecord
	belongs_to :supplier
	has_many :images
	has_many :orders
	

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

	def first_image_url
		image_collection = images
		if image_collection.length == 0
			"some-image"
		else	
			image_collection.first.url
		end	
	end
end
