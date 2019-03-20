require 'deck'

RSpec.describe Deck do
  subject(:deck) { Deck.new }

  describe "#initialize" do
    
    it "has 52 cards" do
      expect(deck.cards.length).to eq 52
    end

    it "has all unique cards" do
      count = Hash.new { |h,k| h[k] = [] }
      deck.cards.each do |card|
        count[card.suit] << card.value
      end
      expect(count.keys.length).to eq(4)
      count.keys.each do |key|
        expect(count[key].length).to eq(13)
        expect(count[key].uniq).to eq(count[key])
      end
    end


  end

  describe "#deal" do

    it "returns correct number of cards" do
      expect(deck.deal(3).length).to eq(3)

    end

    it "takes the cards outta the deck" do
      card = deck.deal(1)
      expect(deck.cards).to_not include(card)
    end

  end

  describe "#populate" do 

    it "resets deck to 52 unique cards" do
      deck.deal(10)
      deck.populate
      expect(deck.cards.length).to eq(52)
    end
  end

end