require './player'

class Game
	attr_accessor :players, :item

	def initialize
		@players=[]
		@item
	end

	def prompt
		puts "Rock, Paper, or Scissors? Press: "
		puts "(1) for Rock"
		puts "(2) for Paper"
		puts "(3) for Scissors"
	end

	def accept
		self.item = gets.chomp.to_i
	end

	def inform(item)
		puts "You chose #{item}"
	end

	






	game = Game.new
	game.prompt
	item = game.accept
	game.inform(item)
	puts game.item

end