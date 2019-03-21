module Hand
  @hand_methods = [method(:straight_flush), method(:four_of_kind), method(:full_house), method(:flush),
    method(:straight), method(:three_of_kind), method(:two_pair), method(:pair), method(:high_card) ]

    #hand_methods.each {|m| m.call }
 

  def score_hand(hand)
    hand_methods.each_with_index do |method, index| 
      score = method.call(hand)
      unless score.empty?
        return [index] + score
      end
    end
  end

  def straight_flush(hand)
    
  end

  def four_of_kind(hand)

  end

  def full_house(hand)

  end

  def flush(hand)
    
  end

  def straight(hand)

  end

  def three_of_kind(hand)

  end

  def two_pair(hand)

  end

  def pair(hand)

  end

  def high_card(hand)

  end
end