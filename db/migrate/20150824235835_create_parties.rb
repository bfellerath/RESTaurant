class CreateParties < ActiveRecord::Migration
  def change
    create_table :parties do |t|
      t.integer :parties_id
      t.integer :table_number
      t.string :is_paid
      t.timestamps
    end
  end
end
