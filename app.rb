require_relative 'config/environment'

class App < Sinatra::Base

  configure do
    enable :Sessions
    set :session_secret, "secret"
  end

  get '/' do
  erb :index
  end

  post '/checkout' do
    @item = params[:item]
    session[:item] = @item
  erb :checkout
end
end
