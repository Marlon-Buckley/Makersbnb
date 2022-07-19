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

  run! if app_file == $0
end