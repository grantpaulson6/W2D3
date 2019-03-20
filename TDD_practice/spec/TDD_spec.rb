require "TDD"

describe "Array#my_uniq" do
  subject(:arr_dup) { [1,2,3,1]}
  subject(:arr_uni) { [1,2,3] }

  it "takes in an array" do
    expect { arr_uni.my_uniq }.to_not raise_error(NoMethodError)
  end

  it "returns a new array" do
    expect(arr_dup.my_uniq).to be_a(Array)
  end
  
  it "doesn't mutate orginial array" do
    new_arr = arr_dup.my_uniq
    expect(new_arr).to_not be(arr_dup)
  end

  it "preserves order of elements & removes duplicates" do
    expect(arr_dup.my_uniq).to eq([1,2,3])
  end

  it "doesnt remove duplicates when already unique" do
    expect(arr_uni.my_uniq).to eq([1,2,3])
  end

end




describe "Array#two_sum" do
  subject(:arr) { [1,2,-1,0,1]}

  it "operates on an array" do
    expect { arr_uni.two_sum }.to_not raise_error(NoMethodError)
  end

  it "returns empty array if no two elements sum to zero" do
    expect([1,2].two_sum).to eq([])
  end

  it "returns empty array if input empty" do
    expect([].two_sum).to eq([])
  end

  it "returns nested array of pairs that sum to zero" do
    expect(arr.two_sum).to eq([[0,2], [2,4]])
  end

  it "doesnt return duplicate pairs" do
    expect(arr.two_sum).to_not include([2,0])
  end

  it "returns pairs in order of ascending index" do 
    two_sums = arr.two_sum
    (0...two_sums.length - 1).each do |i|
    expect(two_sums[i][0]).to be <= two_sums[i + 1][0]
    expect(two_sums[i][0]).to be < two_sums[i][1]
    end
  end

end


describe "Array#my_transpose" do
  subject(:arr){[
    [0, 1, 2],
    [3, 4, 5],
    [6, 7, 8]
  ]}

  it "doesn't mutate original array" do
    expect(arr.my_transpose).to_not be(arr)
  end

  it "transposes correctly" do
    expect(arr.my_transpose).to eq([
    [0, 3, 6],
    [1, 4, 7],
    [2, 5, 8]
  ])
  end
end

describe "stock_picker(arr)" do
  subject(:arr) { [5, 6, 12, 3, 5, 9]}

  it "returns array of length 2" do
    expect(stock_picker(arr).length).to eq(2)
  end

  it "doesn't try to sell backwards" do
    expect(stock_picker(arr)[0]).to be < stock_picker(arr)[1] 
  end

  it "produces right answer" do
    expect(stock_picker(arr)).to eq([0,2])
  end

end

RSpec.describe Towers do
  subject(:game) { Towers.new }

  describe '#move' do
    
    
    it 'receives two arguments' do
      expect { game.move(0,1) }.to_not raise_error(ArgumentError)
    end

    it 'moves disc to new spot if legit move' do
      disc = game.towers.first.last
      game.move(0, 2)
      expect(game.towers.last.last).to eq disc
    end

    it 'doesnt move disc otherwise' do
      game.move(0, 2)
      expect{ game.move(0,2) }.to raise_error("bad move!")
    end

  end

  describe '#won?' do
    subject(:won){ Towers.new }
    

    context 'returns true if the game is over' do
      it 'checks if pile is complete' do
        won.towers = [ [], [], [5,4,3,2,1] ]
        expect(won.won?).to be true
      end

      it 'checks if first pile is empty'
        won.towers = [ [5,4,3,2,1], [], [] ]
        expect(won.won?).to be false
      end


  end

end