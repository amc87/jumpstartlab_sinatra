require 'sinatra'
require 'sinatra/reloader'

sec_num = rand(100)

get '/' do

	
	"The secret number is #{sec_num}"
end