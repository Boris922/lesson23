#encoding: utf-8
require 'rubygems'
require 'sinatra'
require 'sinatra/reloader'

get '/' do

	erb "Hello! <a href=\"https://github.com/bootstrap-ruby/sinatra-bootstrap\">Original</a> pattern has been modified for <a href=\"http://rubyschool.us/\">Ruby School</a>"			

end

get '/about' do 
	erb :about
end

get '/visit' do
	erb :visit 
end

post '/visit' do 

	@aaa = params[:username]
	@bbb = params[:phone]
	@ccc = params[:time]
	@ddd = params[:barber]
	@eee = params[:color]

	erb "OK!, username is #{@username}, #{@phone}, #{@time}, #{@barber}, #{@color}"

end		