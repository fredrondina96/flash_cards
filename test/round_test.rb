require 'minitest'
require 'minitest/autorun'
require 'minitest/pride'
require './lib/card' #I tried to use relative for these next 4 requires
require './lib/turn' #But that broke everything so I switched them back
require './lib/deck'
require './lib/round'
require 'pry'

class RoundTest < Minitest::Test

  def setup
    @card_1 = Card.new("What is the capital of Alaska?", "Juneau", :Geography)
    @card_2 = Card.new("The Viking spacecraft sent back to Earth photographs and reports about the surface of which planet?", "Mars", :STEM)
    @card_3 = Card.new("Describe in words the exact direction that is 697.5° clockwise from due north?", "North north west", :STEM)
    @cards = [@card_1, @card_2, @card_3]
    @deck = Deck.new(@cards)
    @round = Round.new(@deck)
    @turn1 = Turn.new("Juneau", @deck.cards.first) #correct answer
    @turn2 = Turn.new("Venus", @deck.cards[1])     #incorrect answer
  end

  def test_round_exists
      assert_instance_of Round, @round
  end

  def test_current_card_works
      assert_equal @round.current_card, @round.deck.cards.first
  end

  def test_take_turn_makes_a_turn
        @round.take_turn("Juneau")
        assert_instance_of Turn, @turn1
  end

  def test_the_answer_is_correct
        @round.take_turn("Juneau")
        assert @turn1.correct?
  end

  def test_it_can_return_a_percent_correct
        @round.take_turn("Juneau")
        @round.take_turn("Venus")
        assert_equal 0.5, @round.percent_correct
        #If I have time I will make this return an actual %
  end
end



#use @round.deck.cards[card location].answer
#to reach in and access the answers
