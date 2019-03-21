

class Card
  attr_reader :value, :suit
  def initialize(value, suit)
    @value = value
    @suit = suit
  end

  def inspect
    value.to_s + " of " + suit.to_s
  end

  def self.all_suits
    SUITS
  end

  def self.all_values
    VALUES
  end

  SUITS = [:hearts, :diamonds, :spades, :clubs].freeze
  VALUES = [2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14].freeze






end

# c = Card.new(3, :spades)
# puts c