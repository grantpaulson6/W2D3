class Array
  def my_uniq
    new_arr = []
    self.each { |ele| new_arr << ele unless new_arr.include?(ele) }
    new_arr
  end

  def two_sum
    ans = []
    self.each_with_index do |el1, i1|
      self.each_with_index do |el2, i2|
        ans << [i1, i2] if el1 + el2 == 0 && i1 < i2
      end
    end
    ans
  end

  def my_transpose
    transposed = Array.new(self[0].length) {Array.new(self.length)}
    self.each_with_index do |row, rowi|
      row.each_with_index do |ele, coli|
      transposed[coli][rowi] = ele
      end
    end
    transposed
  end

end

def stock_picker(arr)

  profits = {}
  arr.each_with_index do |el1, i1|
    arr.each_with_index do |el2, i2|
      profits[el2 - el1] = [i1, i2] if i1 < i2
    end
  end
  profits[profits.keys.max]
end

class Towers

end