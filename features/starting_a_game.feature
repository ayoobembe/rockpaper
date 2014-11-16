Feature: Starting the game
	In order to play Rock Paper Scissors
	As a visitor to the site
	I want to start a new game

	Scenario: Playing
		Given I am on the homepage
		When I follow "New Game"
		Then I should see "What's your name?"