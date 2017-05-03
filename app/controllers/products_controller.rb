class ProductsController < ApplicationController
	def products_all
		@products = Product.all 
		render 'products_all.html.erb'
	end
end
