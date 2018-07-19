require 'minitest/autorun'
require 'minitest/pride'
require './lib/board.rb'

class BoardTest < Minitest::Test

  def test_it_renders
    skip
    board = Board.new

    expected =
      "ABCDEFG
 .......
 .......
 .......
 .......
 .......
 ......."

    assert_equal expected, board.render
  end

  def test_a_player_can_make_move
    
    board = Board.new
    board.render

    expected =
   "ABCDEFG
 .......
 .......
 .......
 .......
 .......
 .X....."
    board.render
    board.player_one_move('B')
    assert_equal expected, board.render
  end

  def test_a_comp_can_make_move
   skip
    board = Board.new
    board.render

    expected =
   "ABCDEFG
 .......
 .......
 .......
 .......
 .......
 0X....."
    board.render
    board.player_one_move('B')
    board.computer_move
    assert_equal expected, board.render
  end
end
