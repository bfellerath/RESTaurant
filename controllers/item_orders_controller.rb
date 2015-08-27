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




  #-- FORM for UPDATING: edit--
  get '/:id/edit' do
    @item_order = ItemOrder.find(params[:id])
    erb :'item_orders/edit'

  end

  #--- UPDATE ITEM ORDERS: update --

  put '/:id' do
    item_order = ItemOrder.find(params[:id])
    item_order.update(params[:item_order["food_item"]["name"]])

  end


end
