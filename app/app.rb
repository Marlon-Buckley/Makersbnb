require 'sinatra/base'
require 'sinatra/activerecord'
#require 'sinatra/acticerecord/rake'

require_relative '../lib/listings'
require_relative '../lib/listing'
require_relative '../lib/user'

require_relative 'controllers/app_controller'
require_relative 'controllers/home_controller'
require_relative 'controllers/registrations_controller'
require_relative 'controllers/sessions_controller'


#testpush
#lib/listing.rb
class Makersbnb < Sinatra::Base

  get '/test' do
    "Testing not resting."
  end

  get '/all-listings' do
    @all_listings = Listings.all
    p @all_listings
    erb(:"all-listings")
  end

  get '/add' do
    erb(:"/add")
  end
  
  post '/all-listings' do
    p params
    Listings.add(
      name: params[:name], 
      description: params[:description], 
      price: params[:price], 
      available_from: params[:available_from], 
      available_to: params[:available_to]
      )
    redirect '/all-listings'
  end

  run! if app_file == $0
end