class AddBelongsToAdminColumnToUsers < ActiveRecord::Migration
  def change
  	add_column :users, :admin_id, :integer
  end
end
