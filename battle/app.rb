require 'sinatra'

class Battle < Sinatra::Base
  enable :sessions
  set :session_secret, "My session secret"

  get '/' do
    erb :index
  end

  post '/names' do
    session[:Player1_Name] = params[:Player1_Name]
    session[:Player2_Name] = params[:Player2_Name]
    redirect '/play'
  end

  get '/play' do
    @Player1_Name = session[:Player1_Name]
    @Player2_Name = session[:Player2_Name]
    erb :play
  end
end
