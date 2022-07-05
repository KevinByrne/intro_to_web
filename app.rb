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

get '/cat' do
  '<img src = "https://i.imgur.com/jFaSxym.png" <style="border: dashed-red"></style></img>'
end