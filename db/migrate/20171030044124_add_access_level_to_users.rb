class AddAccessLevelToUsers < ActiveRecord::Migration[5.1]
  def change
  	remove_column :users, :access_level
  	add_column :users, :accesss_level, :integer, default: 0
  end
end
