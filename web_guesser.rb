require 'sinatra'
require 'sinatra/reloader'

SECRET_NUMBER = rand(100)

def check_guess(guess)
  if guess.to_i > SECRET_NUMBER
    "Too high. The secret number is #{SECRET_NUMBER}."
  end
end


get '/' do
  guess = params["guess"]
  message = check_guess(guess)
  erb :index, :locals => {
    :number => SECRET_NUMBER,
    :message => message
  }
end
