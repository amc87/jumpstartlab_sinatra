

require 'sinatra'
require 'sinatra/reloader'

number = rand(100)

get '/' do

	if params["guess"].to_i > number + 5
		answer = "Way too high!"

	elsif params["guess"].to_i < number - 5
		answer = "Way too low!"

	elsif params["guess"].to_i == number
		answer = "Right!!!"
		
		
	else
		answer = params["guess"].to_i
	end

	erb :index, :locals => {:number => number, :answer => answer}

end