require 'player'

class Game
attr_accessor :players, :player_choice, :game_choice, :items, :result, :rules


	def initialize
		@players=[]
		@items = %w(rock paper scissors)
		@player_choice
		@game_choice = @items.sample
		@rules 
		@result
	end

	def prompt
		puts "Rock, Paper, or Scissors? Press: "
		puts "(1) for Rock"
		puts "(2) for Paper"
		puts "(3) for Scissors"
	end

	def accept
		self.player_choice = items[gets.chomp.to_i - 1]
	end

	def inform(item)
		puts "You chose #{item}"
		puts "The computer chose #{game_choice}"
	end

	def set_rules
		@rules = {
			:rock => {:rock => 'drew', :paper =>'lost', :scissors => 'won'  },
			:paper => {:rock => 'won', :paper =>'drew', :scissors => 'lost'  },
			:scissors => {:rock => 'lost', :paper =>'won', :scissors => 'drew'  }
		}
	end

	def compare(player_choice, computer_choice)
		self.result = self.rules.fetch(player_choice.to_sym).fetch(computer_choice.to_sym)
	end

	def declare_winner
		result
	end

	

	#How does the game select an item

	#How does the game decide who wins?
	

=begin 
	how to decide who wins...
	i)Rock wins scissors
	ii)scissors win paper
	iii)paper wins rock
=end
	









	game = Game.new
	game.prompt
	item1 = game.accept
	item2 = game.game_choice
	game.inform(item1)
	# puts game.player_choice
	# puts game.game_choice
	game.set_rules
	game.compare(item1,item2)
	puts game.declare_winner

end