require_relative 'contact'
require 'sinatra'

after do
  ActiveRecord::Base.connection.close
end

get '/index' do
  erb :index
end

get '/contacts' do
  @contacts = Contact.all
  erb :contacts
end

get '/' do
  redirect to('/index')
end


get '/about' do
  erb :about
end