require './king.rb'
require './rook.rb'
require './bishop.rb'
require './queen.rb'
require './knight.rb'
require './pawn.rb'

class Pieces
  attr_accessor :pieces
  def initialize(window)
    @window = window
    @width = 70
    @king = King.new
    @rook = Rook.new
    @bishop = Bishop.new
    @queen = Queen.new
    @knight = Knight.new
    @pawn = Pawn.new

    @black_rook = Gosu::Image.new(@window, "Images/black_rook.png", true)
    @black_knight = Gosu::Image.new(@window, "Images/black_knight.png", true)
    @black_bishop = Gosu::Image.new(@window, "Images/black_bishop.png", true)
    @black_king = Gosu::Image.new(@window, "Images/black_king.png", true)
    @black_queen = Gosu::Image.new(@window, "Images/black_queen.png", true)
    @black_pawn = Gosu::Image.new(@window, "Images/black_pawn.png", true)
    @white_rook = Gosu::Image.new(@window, "Images/white_rook.png", true)
    @white_knight = Gosu::Image.new(@window, "Images/white_knight.png", true)
    @white_bishop = Gosu::Image.new(@window, "Images/white_bishop.png", true)
    @white_king = Gosu::Image.new(@window, "Images/white_king.png", true)
    @white_queen = Gosu::Image.new(@window, "Images/white_queen.png", true)
    @white_pawn =   Gosu::Image.new(@window, "Images/white_pawn.png", true)
    @pieces = { "L_black_rook"   => [0,0],
                "L_black_knight" => [1,0],
                "L_black_bishop" => [2,0],
                "black_king"     => [3,0],
                "black_queen"    => [4,0],
                "R_black_bishop" => [5,0],
                "R_black_knight" => [6,0],
                "R_black_rook"   => [7,0],
                "black_pawn1"    => [0,1],
                "black_pawn2"    => [1,1],
                "black_pawn3"    => [2,1],
                "black_pawn4"    => [3,1],
                "black_pawn5"    => [4,1],
                "black_pawn6"    => [5,1],
                "black_pawn7"    => [6,1],
                "black_pawn8"    => [7,1],
                "L_white_rook"   => [0,7],
                "L_white_knight" => [1,7],
                "L_white_bishop" => [2,7],
                "white_king"     => [3,7],
                "white_queen"    => [4,7],
                "R_white_bishop" => [5,7],
                "R_white_knight" => [6,7],
                "R_white_rook"   => [7,7],
                "white_pawn1"    => [0,6],
                "white_pawn2"    => [1,6],
                "white_pawn3"    => [2,6],
                "white_pawn4"    => [3,6],
                "white_pawn5"    => [4,6],
                "white_pawn6"    => [5,6],
                "white_pawn7"    => [6,6],
                "white_pawn8"    => [7,6] }
  end

  def board_to_mouse(board_coord)
    (board_coord * @width) + (@width/2)
  end

  def mouse_to_board(mouse)
    (mouse / @width).to_i
  end

  def starting_position(piece_name, num)
    board_to_mouse(@pieces[piece_name][num])
  end

  def draw_single_piece(var, piece_name)
    var.draw_rot(starting_position(piece_name,0), starting_position(piece_name,1),0,0)
  end

  def draw_pieces
    draw_single_piece(@black_rook, "L_black_rook")
    draw_single_piece(@black_rook, "R_black_rook")
    draw_single_piece(@black_knight, "L_black_knight")
    draw_single_piece(@black_knight, "R_black_knight")
    draw_single_piece(@black_bishop, "L_black_bishop")
    draw_single_piece(@black_bishop, "R_black_bishop")
    draw_single_piece(@black_king, "black_king")
    draw_single_piece(@black_queen, "black_queen")
    i=1
    for i in 1..8
      draw_single_piece(@black_pawn, "black_pawn#{i}")
    end

    draw_single_piece(@white_rook, "L_white_rook")
    draw_single_piece(@white_rook, "R_white_rook")
    draw_single_piece(@white_knight, "L_white_knight")
    draw_single_piece(@white_knight, "R_white_knight")
    draw_single_piece(@white_bishop, "L_white_bishop")
    draw_single_piece(@white_bishop, "R_white_bishop")
    draw_single_piece(@white_king, "white_king")
    draw_single_piece(@white_queen, "white_queen")
    j=1
    for j in 1..8
      draw_single_piece(@white_pawn, "white_pawn#{j}")
    end
  end

  def valid_chess_move?(piece, from_x, from_y, to_x, to_y)
    if piece == "black_king" || piece == "white_king"
      @king.rule_to_move(from_x, from_y, to_x, to_y)
    elsif piece == "L_black_rook" || piece == "R_black_rook" ||
      piece == "L_white_rook" || piece == "R_white_rook"
      @rook.rule_to_move(from_x, from_y, to_x, to_y)
    elsif piece == "L_black_bishop" || piece == "R_black_bishop" ||
      piece == "L_white_bishop" || piece == "R_white_bishop"
      @bishop.rule_to_move(from_x, from_y, to_x, to_y)
    elsif piece == "black_queen" || piece == "white_queen"
      @queen.rule_to_move(from_x, from_y, to_x, to_y)
    elsif piece == "L_black_knight" || piece == "R_black_knight" ||
      piece == "L_white_knight" || piece == "R_white_knight"
      @knight.rule_to_move(from_x, from_y, to_x, to_y)
    elsif piece == "black_pawn1" || piece == "black_pawn2" ||
      piece == "black_pawn3" || piece == "black_pawn4" || piece == "black_pawn5" ||
      piece == "black_pawn6" || piece == "black_pawn7" || piece == "black_pawn8"
      @pawn.rule_to_move(from_x, from_y, to_x, to_y)
    elsif piece == "white_pawn1" || piece == "white_pawn2" ||
      piece == "white_pawn3" || piece == "white_pawn4" || piece == "white_pawn5" ||
      piece == "white_pawn6" || piece == "white_pawn7" || piece == "white_pawn8"
      @pawn.rule_to_move(from_x, from_y, to_x, to_y)
    end
  end
end
