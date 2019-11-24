require './lib/card'
require './lib/deck'
require 'pry'


class Deck
  attr_reader :cards
    def initialize(cards)
      @cards = cards
      # @cards = [@card_1, @card_2, @card_3]
    end

    def cards_in_category(category)
      #I should try using map or find all here next time

        selection = []
          # binding.pry
        @cards.each do |card|

            if card.category == category
              selection << card
              #almost have this
            end
          end
            # binding.pry
         selection
      end
    end


#pry is key
