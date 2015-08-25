class ItemOrdersController < ApplicationController

  get '/' do
    @item_orders = ItemOrder.all
    erb :'item_order/index'
  end

  get '/new' do
    erb :'item_order/new'
  end

  post '/' do
    ItemOrder.create(params[:item_order])
    redirect '/item_order'
  end

end
