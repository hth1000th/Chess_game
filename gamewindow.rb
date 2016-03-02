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

    @current_piece = ""
    @click_to_move = 0
    @hash = Hash.new
  end

  def draw
    @board.draw_board
    @pieces.draw_pieces
  end

  def button_down(id)
    if (id == Gosu::MsLeft) && @click_to_move%2 == 0
      @pieces.pieces.each { |key,value|
        if value[0] == @pieces.mouse_to_board(mouse_x) && value[1] == @pieces.mouse_to_board(mouse_y)
          @current_piece = key
          break
        end }
      @click_to_move += 1
    elsif (id == Gosu::MsLeft) && @click_to_move%2 != 0
      @current_x = @pieces.mouse_to_board(mouse_x)
      @current_y = @pieces.mouse_to_board(mouse_y)
      @pieces.pieces[@current_piece] = [@current_x, @current_y]
      @click_to_move += 1
      @current_piece = nil
    end
  end
end
