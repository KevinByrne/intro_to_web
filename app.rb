require 'sinatra'
require 'sinatra/reloader' if development?

get '/' do
  'Hello there'
end

get '/secret' do
  'this is another route'
end

get '/third-route' do
  'this is the third route created'
end

get '/another-one' do
  'we have created another route'
end

get '/random-cat' do
  @name = ["Amigo", "Misty", "Almond", "Tibbles", "Scratchula"].sample
  erb(:index)
end

get '/named-cat' do
  p params
  @name = params[:name]
  @colour = params[:colour]
  @personality = params[:personality]
  erb(:index)
end