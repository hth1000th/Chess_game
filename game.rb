require './board.rb'
require './pieces.rb'

class Game
  attr_accessor :current_player, :current_piece
  @@num = 0

  def initialize()
    #@board = Board.new()
    #@pieces = Pieces.new()
  end

  def setup()
    #@board.draw_board # to create a chess board (8x8)
    #@pieces.draw_pieces # to place the pieces at the starting position
  end

  def promote(location, piece)
    if (piece =~ /^(king|queen|bishop|knight|rook|pawn)$/i)
      raise "Invalid input"
    end
    "bishop"
  end

  def take_turn()
    "white"
  end

  def switch_players()
    if(@@num%2 == 0)
      @@num = @@num + 1
      return "white"
    else
      @@num = @@num + 1
      return "black"
    end
  end

  def checkmate?()
    true
  end

  def check?()
    true
  end
end
