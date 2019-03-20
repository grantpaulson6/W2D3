require_relative 'card'
require 'byebug'

class Deck
  attr_accessor :cards
  def initialize
    @cards = []
    self.populate
  end

  def populate
    self.cards = []
    SUITS.each do |suit|
      VALUES.each do |value|
        cards << Card.new(value, suit)
      end
    end
    cards.shuffle!
  end

  def deal(num)
    dealt = []
    num.times { dealt << cards.pop }
    dealt
  end
  

  SUITS = [:hearts, :diamonds, :spades, :clubs].freeze
  VALUES = [2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14].freeze

end

# d = Deck.new
# p d.cards#.each {|card| puts card.inspect }