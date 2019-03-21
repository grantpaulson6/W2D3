require_relative 'card'
require 'byebug'

class Deck
  attr_accessor :cards
  def initialize
    @cards = Deck.populate
  end

  def self.populate
    cards = []
    Card.all_suits.each do |suit|
      Card.all_values.each do |value|
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
  

end

# d = Deck.new
# p d.cards#.each {|card| puts card.inspect }