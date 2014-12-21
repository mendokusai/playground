class AddLatitudeAndLongitudeToPark < ActiveRecord::Migration
  def change
    add_column :parks, :latitude, :float
    add_column :parks, :longitude, :float
  end
end
