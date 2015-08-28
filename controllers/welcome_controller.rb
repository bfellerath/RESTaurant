class WelcomeController < ApplicationController

  get '/' do
    # all instance variables
    #this filters out everything for table 5
    # @item_orders.select{ |order| order.party_id = 5}
    erb :index
  end
end
