class CreateItemOrders < ActiveRecord::Migration
  def change
    create_table :item_orders do |t|
      t.integer :food_item_id
      t.integer :party_id
      t.timestamps
    end

  end
end
