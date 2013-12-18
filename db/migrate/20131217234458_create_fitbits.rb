class CreateFitbits < ActiveRecord::Migration
  def change
    create_table :fitbits do |t|
    	t.belongs_to :user
    	t.string :active_score
    	t.string :calories_bmr
    	t.string :calories_out
    	t.string :distances_total_distance
    	t.string :distances_tracker_distance
    	t.string :distances_logged_distance
    	t.string :distances_veryactive_distance
    	t.string :distances_moderateactive_distance
    	t.string :distances_lightlyactive_distance
    	t.string :distances_sedentaryactive_distance
    	t.string :fairly_active_min
    	t.string :lightly_active_min
    	t.string :marginal_calories
    	t.string :sedentary_min
    	t.string :steps_taken
    	t.string :veryActive_min
    	t.string :device_battery
    	t.string :device_version
    end
  end
end
