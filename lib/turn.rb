#nathan helped
class Turn
  attr_accessor :guess, :card
  def initialize (guess, card) #these are attributes
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

    if (@guess == card.answer) == true
       "Correct!"

    else
       "Wrong!"
    end
  end
end
