class CreateFoodItems < ActiveRecord::Migration
  def change
    create_table :food_items do |t|
      t.string :name
      t.integer :price
      t.string :allergens
      t.timestamps
    end

  end
end
