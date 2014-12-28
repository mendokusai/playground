class AddAgesToEquipment < ActiveRecord::Migration
  def change
    add_column :equipment, :age_range, :string
  end
end
