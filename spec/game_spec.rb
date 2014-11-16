require 'game'
require 'player'

describe Game do 
	let(:game)		{Game.new}
	let(:player1)	{double :selection => 'rock'}
	let(:player2)	{double :selection => 'scissors'}
	let(:player3)	{double :selection => 'paper'}

	it 'should have no players when initialized' do
		expect(game.players).to be_empty
	end

	#Write some more tests
	it 'should know if player lost' do 
		game.game_choice = 'paper'
		game.set_rules
		game.compare(player1.selection, game.game_choice)
		expect(game.declare_winner).to eq 'lost'
	end

	it 'should know if player won' do 
		game.game_choice = 'paper'
		game.set_rules
		game.compare(player2.selection, game.game_choice)
		expect(game.declare_winner).to eq 'won'
	end 

	it 'should know if player drew' do 
		game.game_choice = 'paper'
		game.set_rules
		game.compare(player3.selection, game.game_choice)
		expect(game.declare_winner).to eq 'drew'
	end




end