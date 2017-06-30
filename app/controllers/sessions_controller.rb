class SessionsController < ApplicationController
	def new
	end

	def create
		

	end

	def destroy
		session[:user_id] = nil
		flash[:success] = "Successfully logged out"
		redirect_to '/login'
	end
end
