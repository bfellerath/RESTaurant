class BuildingsController < ApplicationController

  get '/' do
    @buildings = Building.all
    erb :'buildings/index'
  end

  get '/new' do
    erb :'buildings/new'
  end

  post '/' do
    Building.create(params[:building])
    redirect '/buildings'
  end

end
