require 'sinatra'
require 'sinatra/reloader'

SECRET_NUMBER = rand(100)

def check_guess(guess)
  if guess.nil?
    "Welcome to the game, please guess a number!"
  elsif (guess.to_i - 5) >= SECRET_NUMBER
    "Way to high!"
  elsif (guess.to_i + 5) <= SECRET_NUMBER
    "Way to low!"
  elsif guess.to_i > SECRET_NUMBER
    "Too high."
  elsif guess.to_i < SECRET_NUMBER
    "Too low."
  elsif guess.to_i == SECRET_NUMBER
    "You got it right!"
  end
end

def background_color(guess)
  if guess.to_i == SECRET_NUMBER
    "green"
  elsif (guess.to_i - 5) >= SECRET_NUMBER || (guess.to_i + 5 <= SECRET_NUMBER)
    "red"
  else
    "pink"
  end
end

get '/' do
  guess = params["guess"]
  message = check_guess(guess)
  color = background_color(guess)
  erb :index, :locals => {:message => message, :color => color}
end
