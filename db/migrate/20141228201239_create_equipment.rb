class CreateEquipment < ActiveRecord::Migration
  def change
    create_table :equipment do |t|
      t.string :name
      t.text :description
      t.references :park, index: true

      t.timestamps
    end
  end
end
