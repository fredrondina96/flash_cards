class Turn
  attr_accessor :guess, :card
  def initialize (guess, card)
    @guess = guess
    @card = card
  end


def correct?
  if
    @guess == card.answer
     true
  else
     false
  end
  end

def feedback
  if @guess == card.answer
    puts "Correct!"
  else
    puts "Wrong!"
  end
  end
end