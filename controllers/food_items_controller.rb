class FoodItemsController < ApplicationController

  get '/' do
    @food_items = FoodItem.all
    erb :'food_items/index'
  end

  get '/new' do
    erb :'food_items/new'
  end

  post '/' do
    FoodItem.create(params[:food_item])
    redirect '/food_items'
  end

end
