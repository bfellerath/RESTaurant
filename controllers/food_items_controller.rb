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

  #-- FORM for UPDATING: edit--
  get '/:id/edit' do
    @food_item = FoodItem.find(params[:id])
    erb :'food_items/edit'

  end


    #--- UPDATE FOOD ITEMS: update --
  put '/:id' do
    food_item = FoodItem.find(params[:id])
    food_item.update(params[:food_item])
    redirect "/food_items"

  end
  


end
