class Party < ActiveRecord::Base
  has_many :item_orders
  has_many :food_items, through: :item_orders
end
