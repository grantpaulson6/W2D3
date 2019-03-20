require 'card'

RSpec.describe Card do

  describe "#initialize" do
    subject(:card) { Card.new( :ace, :spades) }

    it "has a suit" do
      expect(card.suit).to eq(:spades)
    end

    it "has a value" do
      expect(card.value).to eq(:ace)
    end
  end
end