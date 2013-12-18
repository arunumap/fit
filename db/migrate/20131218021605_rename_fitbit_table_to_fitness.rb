class RenameFitbitTableToFitness < ActiveRecord::Migration
  def change
  	rename_table :fitbits, :measurements
  end
end
