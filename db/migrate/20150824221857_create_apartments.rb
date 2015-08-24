class CreateApartments < ActiveRecord::Migration
  def change
    create_table :apartments do |t|
      t.integer :room_number
      t.integer :sqft
      t.integer :building_id
      t.timestamps
    end
    
  end
end
