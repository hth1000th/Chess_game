STDOUT.sync = true

require './Ruby_Lab3_Chess.rb'

board = Board.new()
game = Game.new()

board.display()
#board.prompt_for_move()

for i in 1..10
  board.prompt_for_move()
end
