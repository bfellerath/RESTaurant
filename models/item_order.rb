class ItemOrder < ActiveRecord::Base
  belongs_to :food_items
  belongs_to :parties
end
