require 'net/http'
require 'json'
require 'rubygems'

require "openweather2"


Openweather2.configure do |config|
  config.endpoint = 'http://api.openweathermap.org/data/2.5'
  config.apikey = 'e903e61ccc7dcba28eba15692b9ae9a3'
end

  
#Search by city
Openweather2.get_weather(city: "london")

#Search by ZIP code

=begin
Openweather2.get_weather(zip: @zip)




$base_url = 'http://api.openweathermap.org/data/2.5/weather'
$api_key = 'e903e61ccc7dcba28eba15692b9ae9a3'

def get_temperature(city)
  begin
    uri = URI("#{$base_url}?q=#{city}&units=metric&APPID=#{$api_key}")
    response = Net::HTTP.get_response(uri)
  rescue
    puts "Connection error. Exiting..."
    exit 1
    
	if response.is_a?(Net::HTTPSuccess)
    
    weather_data = JSON.parse response.body
    puts weather_data["name"] + " " + format("%.1f", weather_data["main"]["temp"]).to_s + " C"
		
	else
	puts "N/A [" + response.code + "]"
	
	end
  end
end


 puts get_temperature("London")


 
def what_to_wear(city, style)
     @city = @city
     @style = @style
     
end

def format_request_and_call_api(search_city)
     new_search_city = search_city.gsub(" ","_")
	request_string = "http://api.openweathermap.org/data/2.5/weather?q=#{new_search_city}&appid=e903e61ccc7dcba28eba15692b9ae9a3"
	
	sample_uri = URI(request_string) 
	sample_response = Net::HTTP.get(sample_uri) 
	sample_parsedResponse = JSON.parse(sample_response)
	puts sample_parsedResponse
	
	data = sample_parsedResponse["data"]
	
	puts data
	@weather_hash = data[]

     return @weather_hash
     end
     
=end