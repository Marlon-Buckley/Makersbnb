class Makersbnb < Sinatra::Base
  get '/registrations/new' do
    p "route called"
    erb(:'/registrations/new')
  end

  post '/registrations' do
    user = User.new(email: params[:email])
    user.password = params[:password]
    if user.save!
      session[:user_id] = user.id
      redirect('/')
    else

    end
  end
end