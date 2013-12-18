class UsersController < ApplicationController

before_action :authenticated!, :current_user
	def show
		@user = User.find(params[:id])
		@measurement = Measurement.where(user_id: @user.id).first
		@steps = (@measurement.steps_taken.to_f / @measurement.steps_goal.to_f)*100
	end

end
