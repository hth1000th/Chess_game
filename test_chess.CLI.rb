require "test/unit"
require "./Ruby_Lab3_Chess.rb"

class Chess_Test < Test::Unit::TestCase
  attr_reader :game, :board

  def setup
    @game = Game.new()
    @board = Board.new()
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

    assert_match("[\"+   \", \"BP  \", \"+   \", \"+   \", \"+   \", \"+   \", \"+   \", \"+   \"]",
    board.move("B1", "C1").to_s, "No pass test")
    assert_match(/true|false/, board.king_threatened?(nil, nil).to_s, "No pass test")

  end
end
