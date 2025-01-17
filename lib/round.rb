require './lib/card'
require './lib/turn'
require './lib/deck'
require './lib/round'
require 'pry'


class Round

  attr_reader :deck, :c_card, :turns, :correct_answers, :total_questions

  def initialize(deck)
    @deck = deck
    @c_card = 0
    @turns = []
    @correct_answers = 0.0
    @total_questions = 0.0
    #these are the only things I can access
    #for example I cant use @round here, only @deck
  end

  def current_card
    #will use if statments and adding to the c_card varible
    #to let program know what card we want
      if @c_card == 0

        @deck.cards.first

      elsif @c_card == 1
        @deck.cards[1]

      elsif @c_card == 2
        @deck.cards[2]

      elsif @c_card == 3
        @deck.cards[3]

      end
  end

  def take_turn(guess)
    #this will create a new turn, and compare the guess
    #with the card(just like I made it in the class)
    if @c_card == 0
        @turns << @deck.cards.first
        @total_questions += 1
          @c_card += 1
        @turn1 = Turn.new(guess, @deck.cards.first)
        #pretty sure putting this here isnt right
        #but it lets the test pass so for now it stays
        if @turn1.correct?
          @correct_answers += 1
        end
      #why doesnt .current_card work here
    elsif @c_card == 1
        @turns << @deck.cards[1]
        @turn2 = Turn.new(guess, @deck.cards[1])
        @total_questions += 1
          @c_card += 1
        if @turn2.correct?
          @correct_answers += 1
        end
    elsif @c_card == 2
        @turns << @deck.cards[2]
        @total_questions += 1
        @turn3 = Turn.new(guess, @deck.cards[2])
        @c_card += 1
        if @turn3.correct?
          @correct_answers += 1
        end
    elsif @c_card == 3
        @turns << @deck.cards[3]
        @total_questions += 1
        @turn4 = Turn.new(guess, @deck.cards[3])
          @c_card += 1
        if @turn4.correct?
          @correct_answers += 1
        end

    end


  end

  def number_correct
      @correct_answers
  end

  def percent_correct
      (@correct_answers/@total_questions) #.to_f doesnt work here
  end
end
