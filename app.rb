require_relative 'config/environment'

configure do
    enable :sessions
    set :sessions_secret, "secret"
end

class App < Sinatra::Base

    get '/' do
        erb :index
    end

    post '/checkout' do
        @session = session
        @session[:item] = params[:item]
        @item = params[:item]
  
        erb :checkout
    end

end

# params = {
#     :item => "socks"
#   }
#   post '/checkout', params
#   expect(session.has_key?(:item)).to eq(true)
#   expect(session[:item]).to eq(params[:item])