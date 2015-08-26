class ItemOrdersController < ApplicationController

  get '/' do
    @item_orders = ItemOrder.all
    erb :'item_orders/index'
  end

  get '/new' do
    @food_items = FoodItem.all
    @parties = Party.all
    erb :'item_orders/new'
  end


  post '/' do
    ItemOrder.create(params[:item_order])
    redirect '/item_orders'
  end




end
