require 'player.rb'

describe Player do
	let(:player){Player.new}

	it "should exist when initialized" do 
		expect(player.nil?).to be false
	end	

	it "should have a name" do 
		player.name = "Henry"
		expect(player.name).to eq "Henry"
	end
	
end