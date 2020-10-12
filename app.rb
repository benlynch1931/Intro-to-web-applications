require 'sinatra'

get '/' do
  "Hello World"
end

get '/secret' do
  "I'm cool"
end

get '/cat' do
  @names = ["Amigo", "Oscar", "Viking"].sample
  erb :index
end
