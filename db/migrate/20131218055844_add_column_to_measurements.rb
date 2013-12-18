class AddColumnToMeasurements < ActiveRecord::Migration
  def change
  	add_column :measurements, :active_minutes_goal, :string
  	add_column :measurements, :calories_out_goal, :string
  	add_column :measurements, :distance_goal, :string
  	add_column :measurements, :steps_goal, :string
  end
end
