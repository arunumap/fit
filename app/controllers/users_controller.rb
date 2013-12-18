class UsersController < ApplicationController

before_action :authenticated!, :current_user
	def show
		@user = User.find(params[:id])
		@measurement = Measurement.where(user_id: @user.id).first
	end

end
