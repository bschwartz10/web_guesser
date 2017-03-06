require 'sinatra'
require 'sinatra/reloader'

SECRET_NUMBER = rand(100)

def check_guess(guess)
  if (guess.to_i - 5) > SECRET_NUMBER
    "Way to high!"
  elsif (guess.to_i + 5) < SECRET_NUMBER
    "Way to low!"
  elsif guess.to_i > SECRET_NUMBER
    "Too high."
  elsif guess.to_i < SECRET_NUMBER
    "Too low."
  elsif guess.to_i == SECRET_NUMBER
    "You got it right!"
  end
end


get '/' do
  guess = params["guess"]
  message = check_guess(guess)
  erb :index, :locals => {
    :message => message
  }
end
