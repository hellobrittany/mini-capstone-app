class Product < ApplicationRecord
	belongs_to :supplier


	has_many :images
	has_many :category_products
	has_many :categories, through: :category_products
	has_many :carted_products
	has_many :orders, through: :carted_products
	
	validates :name, presence: true
	validates :name, uniqueness: true
	validates :price, presence: true
	validates :price, numericality: true
	validates :description, presence: true
	validates :description, length: {maximum: 500}


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

	def stringify_categories
		categories.map { |category| category.name.titleize }.join(", ")
	end
end
