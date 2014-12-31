class CreateParkEquipments < ActiveRecord::Migration
  def change
    create_table :park_equipments do |t|
    	t.integer :park_id
    	t.integer :equipment_id

    	t.timestamps
    end
  end
end
