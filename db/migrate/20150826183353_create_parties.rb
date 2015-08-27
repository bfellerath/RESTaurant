class CreateParties < ActiveRecord::Migration
  def change
    create_table :parties do |t|
      t.integer :table_number
      t.boolean :is_paid, default: false
      t.timestamps
    end
    
  end
end
