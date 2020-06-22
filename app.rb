require_relative 'config/environment'

class App < Sinatra::Base

  configure do
    enable :sessions #enables a built in feature for sessions
    set :session_secret, "secret" #creates session id
  end

  get '/' do
  erb :index
  end

  post '/checkout' do
    #take in params from the form and add it to the session
    #hash

    @session = params[:item]
  session[:item] = @session
  
    erb :'views/checkout'
  end
    #key should be item
#store the session hash in an instance variable that you can
#access in the views
end
