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
    party = Party.create(params[:party])
    redirect '/parties'
  end

  #- READ INDIVIDUAL: show--
  get '/:id' do
    @party = Party.find(params[:id])
    erb :'parties/show'

  end

  #-- FORM for UPDATING: edit--
  get '/:id/edit' do
    @party = Party.find(params[:id])
    erb :'parties/edit'

  end
  #- DESTROY ITEM_ORDER: destroy -

  delete '/:id' do
    Party.delete(params[:id])
    redirect '/parties'

  end



end
