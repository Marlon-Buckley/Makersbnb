require 'sinatra/base'
#testpush

class Makersbnb < Sinatra::Base

  get '/test' do
    "Testing not resting."
  end

  get '/all-listings' do
    erb(:"all-listings")
  end

  run! if app_file == $0
end