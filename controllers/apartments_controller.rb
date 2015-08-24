class ApartmentsController < ApplicationController

  get '/' do
    @apartments = Apartment.all
    erb :'apartments/index'
  end

  get '/new' do
    @buildings = Building.all
    erb :'apartment/new'
  end

  post '/' do
    Apartment.create(params[:apartment])
    redirect '/apartments'
  end
end
