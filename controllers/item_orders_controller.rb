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
    redirect '/parties'
  end

  #- READ INDIVIDUAL: show--
  get '/:id' do
    @item_order = ItemOrder.find(params[:id])
    erb :'item_orders/show'
  end


  #-- FORM for UPDATING: edit--
  get '/:id/edit' do
    @item_order = ItemOrder.find(params[:id])
    erb :'item_orders/edit'

  end

  #- DESTROY ITEM_ORDER: destroy -

  delete '/:id' do
    ItemOrder.delete(params[:id])
    redirect '/item_orders'

  end


  #--- UPDATE ITEM ORDERS: update --
  #
  # put '/:id' do
  #   binding.pry
  #   item_order = ItemOrder.find(params[:id])
  #   item_order.update ({
  #     item_order: params["food_item"]
  #     })
  #
  # end


end
