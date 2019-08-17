require './environment'

module FormsLab
  class App < Sinatra::Base

  get '/' do
    erb :index
  end

  get '/new' do
    erb :new
  end

  get '/pirates' do
    @pirates = Pirate.all
    erb "'pirates/index'"

post '/pirates' do
  erb :pirates
  end

  post '/pirates' do
  @pirate = Pirate.new(params[:pirate])

  params[:pirates][:ships].each do |details|
    Ship.new(details)
  end
  erb :'pirates/show'
end

  end
end
