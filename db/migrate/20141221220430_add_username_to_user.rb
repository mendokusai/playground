class AddUsernameToUser < ActiveRecord::Migration
  def change
  	add_column :users, :username, :string
  	add_column :users, :admin, :boolean
  end
end
