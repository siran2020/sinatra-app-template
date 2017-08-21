require 'bundler'
Bundler.require
#require 'pp'

require_relative 'models/model.rb'
class MyApp < Sinatra::Base

  get '/' do
    erb :index
  end

  post '/results' do
    @city = params[:city]
    @result=[]
    @result=format_request_and_call_api(@city)
   
    #@result = []
    #@result = format_request_and_call_api(user_city)
    erb :results
  
  end
end