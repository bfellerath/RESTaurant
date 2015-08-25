class PartiesController < ApplicationController

  get '/' do
    @parties = Party.all
    erb :'parties/index'
  end

  get '/new' do
    @food_items = FoodItem.all
    erb :'parties/new'
  end

  post '/' do
    Party.create(params[:party])
    redirect '/parties'
  end

  post '/' do
    Party.create(params[:party_table_nubmer])
    redirect '/parties'
  end

end
