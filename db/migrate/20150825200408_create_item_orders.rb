class CreateItemOrders < ActiveRecord::Migration
  def change
    create_table :item_orders do |t|
      t.integer :parties_id
      t.integer :food_id
      t.timestamps
    end
    
  end
end
