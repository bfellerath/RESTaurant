#CONFIG
require 'bundler'
Bundler.require()

#MODELS
require './models/building'
require './models/apartment'

# CONTROLLERS
require './controllers/application_controller'
require './controllers/welcome_controller'
require './controllers/buildings_controller'
require './controllers/apartments_controller'

#ROUTING
map('/buildings'){ run BuildingsController }
map('/apartments'){ run ApartmentsController }
map('/'){ run WelcomeController }
