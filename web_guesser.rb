require 'sinatra'
require 'sinatra/reloader'

number = rand(100)

get '/' do
  erb :index, :locals => {:number => number}
end





# get '/:name' do
#   "Hello, my name is #{params[:name].capitalize}"
# end
