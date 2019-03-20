

class Card
  attr_reader :value, :suit
  def initialize(value, suit)
    @value = value
    @suit = suit
  end

  def inspect
    value.to_s + " of " + suit.to_s
  end

end

c = Card.new(3, :spades)
puts c