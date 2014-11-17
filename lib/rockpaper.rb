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

  get '/game_on' do 
  	erb :game_on
  end

  post '/game_on' do  
  	@player_choice = params[:item]
  	@game_choice = GAME.game_choice
  	GAME.set_rules
  	GAME.compare(@player_choice,@game_choice)
  	GAME.declare_winner
  end






  # start the server if ruby file executed directly
  run! if app_file == $0
end
