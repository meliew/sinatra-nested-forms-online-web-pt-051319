require './environment'

module FormsLab
  class App < Sinatra::Base

  get '/' do
    erb :index
  end

  get '/new' do
    erb :new
  end

post '/pirates' do
  erb :pirates
  end

  post '/pirates' do
  @pirate = Pirate.new(params[:pirate])
 
  params[:pirates][:ships].each do |details|
    Ship.new(details)
  end
 
  @ships = Ship.all
 
  erb :student
end

  end
end
