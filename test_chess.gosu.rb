require "test/unit"
require "./gamewindow.rb"
require "./game.rb"
require "./board.rb"
require "./pieces.rb"
require "gosu"

class Chess_Test < Test::Unit::TestCase
  attr_reader :game, :board, :pieces

  def setup
    @window = GameWindow.new()
    @game = Game.new()
    @board = Board.new(@window)
    @pieces = Pieces.new(@window)

    @gray = Gosu::Color.argb(0xff_808080)
  end

  # def teardown
  # end

  # def test_fail
  # end

  def test_chess
    assert_nil(game.setup, "This is not nil.")
    assert_match(/king|queen|bishop|knight|rook|pawn/, game.promote(nil, nil), "This is not a piece of chess.")
    assert_match(/black|white/, game.take_turn, "This is not black or white.")
    assert_match(/black|white/, game.switch_players, "This is not black or white.")
    assert_match(/true|false/, game.checkmate?.to_s, "No pass test")
    assert_match(/true|false/, game.check?.to_s, "No pass test")

    assert_nil(board.single_square(0,0,@gray),"No pass test")

    assert_match(35, pieces.board_to_mouse(0), "No pass test")
    assert_match(0, pieces.mouse_to_board(35), "No pass test")
    assert_match(35, pieces.starting_position("L_black_rook", 0), "No pass test")
    assert_nil(pieces.draw_single_piece(@black_rook, "L_black_rook"), "No pass test")
    assert_match(true, pieces.valid_chess_move?("white_king", [3,7], [3,8]), "No pass test")

  end
end
