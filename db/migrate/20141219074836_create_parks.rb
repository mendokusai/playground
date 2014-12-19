class CreateParks < ActiveRecord::Migration
  def change
    create_table :parks do |t|
      t.string :name
      t.string :address
      t.string :city
      t.string :state
      t.text :description

      t.timestamps
    end
  end
end
