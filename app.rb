require_relative 'config/environment'

class App < Sinatra::Base
  enable :sessions
  set :session_secret, "5E*5nv*m#uWDQ#t6wopB"

  get '/' do
    erb :index
  end

  post '/checkout' do
    session["item"] = params[:item]
    @item = params[:item]
    erb :checkout
  end
end