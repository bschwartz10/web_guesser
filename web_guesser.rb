require 'sinatra'
require 'sinatra/reloader'

SECRET_NUMBER = rand(100)

def check_guess(guess)
  if guess.to_i > SECRET_NUMBER
    "Too High. The number was #{SECRET_NUMBER}"
  elsif guess.to_i < SECRET_NUMBER
    "Too Low. The number was #{SECRET_NUMBER}"
  end
end

get '/' do
  guess = params['guess']
  message = check_guess(guess)
  erb :index, :locals => {:message =>message}
end


# get '/:name' do
#   "Hello, my name is #{params[:name].capitalize}"
# end
