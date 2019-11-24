require 'minitest/autorun'
require 'minitest/pride'
require './lib/turn'
require './lib/card'
require 'pry'
class TurnTest < Minitest::Test
#comand / comments out
  def setup #must be called setup in minitest
      @card = Card.new("What is the capital of Alaska?", "Juneau", :Geography)
      @turn = Turn.new("Juneau", @card)
      #use command D to select more of the same word
  end

  def test_turn_is_real
      assert_instance_of Turn, @turn
  end

  def test_guess_has_something
    #binding.pry
      assert_equal "Juneau", @turn.guess
      #want the guess from the turn
  end

  def test_turn_has_card
    assert_equal @card, @turn.card
  end

  def test_correct_response
    assert_equal true, @turn.correct?
  end

  def test_feedback_response
    assert_equal "Correct!", @turn.feedback
  end

  #test the initializes
  #def tab auto fills



  #test methods work
end
