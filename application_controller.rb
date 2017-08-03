require 'bundler'
Bundler.require
require_relative 'models/model.rb'
class MyApp < Sinatra::Base

  get '/' do
    erb :index
  end
  
  post '/results' do
    @sender_name = params[:sender_name]
    @receiver_name = params[:receiver_name]
    @message = params[:message]
    card_maker(@sender_name,@receiver_name,@message)
    
    erb :results
  
  end

end