require 'gosu'
require 'rubygems'
require './board.rb'
require './pieces.rb'

class GameWindow < Gosu::Window
  def initialize
    super 560,560,false
    self.caption = "Chess Game"

    @board = Board.new(self)
    @pieces = Pieces.new(self)

    @current_piece = nil
  end

  def update
    if self.button_down?(Gosu::MsLeft) && (0..70).include?(mouse_x) && (0..70).include?(mouse_y)
      @current_piece = @pieces.black_pieces["L_black_rook"]
    end
  end

  def draw
    @board.draw_board
    @pieces.draw_pieces
    if @current_piece != nil
      @current_piece.draw_rot(35,175,0,0)
    end
  end
end

w = GameWindow.new
w.show
