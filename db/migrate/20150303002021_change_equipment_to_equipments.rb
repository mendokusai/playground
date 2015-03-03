class ChangeEquipmentToEquipments < ActiveRecord::Migration
  def change
  	rename_table :equipment, :equipments
  end
end
