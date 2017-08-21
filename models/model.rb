require 'net/http'
require 'json'
require 'rubygems'
require "open_weather"


options = { units: "metric", APPID: "e903e61ccc7dcba28eba15692b9ae9a3" }

def format_request_and_call_api(city)
	
	new_city = city.gsub(" ", "_")
	request_string = "http://api.openweathermap.org/data/2.5/weather?q=#{new_city}&appid=e903e61ccc7dcba28eba15692b9ae9a3"
	
	sample_uri = URI(request_string) #opens a portal to the data at that link
	sample_response = Net::HTTP.get(sample_uri) #go grab the data in the portal
	sample_parsedResponse = JSON.parse(sample_response) #makes data easy to read
	# data comes back as a hash with info stored in key :data as an array
	data = sample_parsedResponse["data"]
	
	puts OpenWeather::Current.city("#{city}", options)
	
	#@info = []
	#return @info
end

#format_request_and_call_api("#{new_city}")

