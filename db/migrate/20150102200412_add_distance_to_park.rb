class AddDistanceToPark < ActiveRecord::Migration
  def change
  	add_column :parks, :distance, :float
  end
end
