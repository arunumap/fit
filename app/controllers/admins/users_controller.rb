class Admins::UsersController < ApplicationController
	before_action :authenticated!, :current_admin_user
	def index
		@all_user = User.all
	end

	def show
		@user = User.find(params[:id])
		@measurement = Measurement.where(user_id: @user.id).first
		@steps = (@measurement.steps_taken.to_f / @measurement.steps_goal.to_f)*100
		@distance = (@measurement.distances_total_distance.to_f / @measurement.distance_goal.to_f)*100
		@calories = (@measurement.calories_out.to_f / @measurement.calories_out_goal.to_f)*100
		@minutes = (@measurement.veryActive_min.to_f / @measurement.active_minutes_goal.to_f)*100

	end

end