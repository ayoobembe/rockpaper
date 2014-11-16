require 'sinatra/base'
require './lib/game'
require './lib/player'


class RockPaper < Sinatra::Base

	set :views, Proc.new{File.join(root,'..','views')}

	GAME = Game.new
	player1 = Player.new 


  get '/' do
    erb :index
  end

  get '/new_game' do 
  	erb :new_game
  end

  post '/new_game' do 
  	@name = params[:name]
  	player1.name = @name
  	erb :new_game
  end







  # start the server if ruby file executed directly
  run! if app_file == $0
end
