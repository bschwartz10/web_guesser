require 'sinatra'
require 'sinatra/reloader'

number = rand(101)

get '/' do
  "The SECRET NUMBER is #{number}"
end





# get '/:name' do
#   "Hello, my name is #{params[:name].capitalize}"
# end
