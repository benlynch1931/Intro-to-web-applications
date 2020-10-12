require 'sinatra'

get '/' do
  "Hello World"
end

get '/secret' do
  "I'm cool"
end
