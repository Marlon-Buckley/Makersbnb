require 'sinatra/base'
#testpush

class Makersbnb < Sinatra::Base

  get '/test' do
    "Testing"
  end


  run! if app_file == $0
end