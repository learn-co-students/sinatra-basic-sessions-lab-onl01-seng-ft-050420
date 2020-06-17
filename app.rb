require_relative 'config/environment'

class App < Sinatra::Base

    configure do 
        enable :sessions
        set :session_secret, "761366"
    end
    
    get '/' do 
        erb :index
    end  

    post '/checkout' do
        params[:item]
        session["item"] = params[:item]
        @session = session

    end 
end