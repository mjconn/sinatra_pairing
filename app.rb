require 'sinatra'
require "sinatra/reloader" if development?

get '/' do
  "Hello World"
end

get '/secret' do
  "Secret code! Shhh!!"
end

get '/hello' do
  "Hello :)"
end

get '/random-cat' do
  @random_name = ["Amigo", "Misty", "Almond"].sample
  erb(:index)  
end

get '/named-cat' do
  p params
  @name = params[:name]
  erb(:index)  
end

get '/cat_name' do
  erb :cat_name
end

post '/cat_name' do
  p params
  @name = params[:name]
  erb(:cat_name)
end
