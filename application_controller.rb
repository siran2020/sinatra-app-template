require 'bundler'
Bundler.require
require 'pp'

require_relative 'models/model.rb'
class MyApp < Sinatra::Base

  get '/' do
    erb :index
  end

  post '/results' do
    
    @city = params[:city]
    @result = [temp]
    
    #user_city
    #@result=[]
    #@result=what_to_wear(user_city)
   
   # @style = params[:style]

    erb :results
  end
  
end