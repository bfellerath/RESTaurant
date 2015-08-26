#CONFIG
require 'bundler'
Bundler.require()

#MODELS
require './models/food_item'
require './models/party'
require './models/item_order'

# CONTROLLERS
require './controllers/application_controller'
require './controllers/welcome_controller'
require './controllers/food_items_controller'
require './controllers/parties_controller'
require './controllers/item_orders_controller'

#ROUTING
map('/food_items'){ run FoodItemsController }
map('/parties'){ run PartiesController }
map('/item_orders'){ run ItemOrdersController }
map('/'){ run WelcomeController }
