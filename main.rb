require_relative "player.rb"
require_relative "math_game.rb"

player1 = Player.new("player1")
player2 = Player.new("player2")

new_game = MathGame.new(player1, player2)
new_game.start_game
