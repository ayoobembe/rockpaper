require 'game'

describe Game do 
	let(:game){Game.new}

	it 'should have no players when initialized' do
		expect(game.players).to be_empty
	end

	it 'should know what item the player selected' do 
		
	end


end