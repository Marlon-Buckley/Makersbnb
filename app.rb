require 'sinatra/base'
require_relative './lib/listings'
require_relative './lib/listing'
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

  get '/all-listings/add' do
    erb(:"/all-listings/add")
  end
  
  post '/all-listings/add' do
    Listings.add(name: params[:name], description: params[:description], price: params[:price])
  end

  run! if app_file == $0
end