require_relative "config/application"
require "sinatra"
require "sinatra/reloader"
require "sinatra/activerecord"

get "/" do
  @restaurants = Restaurant.all

  erb :index
end

get '/restaurants/new' do
  erb :new
end

get '/restaurants/:id' do
  @restaurant = Restaurant.find(params[:id])

  erb :show
end


post "/restaurants" do
  name = params[:restaurant_name]
  address = params[:restaurant_address]

  restaurant = Restaurant.new(name: name, address: address)
  if restaurant.save
    redirect "/"
  else
    redirect '/restaurants/new'
  end
end























