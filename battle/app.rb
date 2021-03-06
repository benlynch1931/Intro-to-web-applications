require 'sinatra'
require './lib/player.rb'
require './lib/game.rb'

class Battle < Sinatra::Base
  enable :sessions
  set :session_secret, "My session secret"

  get '/' do
    erb :index
  end

  post '/names' do
    player_1 = Player.new(params[:player1_name])
    player_2 = Player.new(params[:player2_name])
    $game = Game.new(player_1, player_2)
    redirect '/play'
  end

  get '/play' do
    @game = $game
    erb :play
  end

  get '/attack' do
    @game = $game
    @game.attack
    erb :attack
  end

end
