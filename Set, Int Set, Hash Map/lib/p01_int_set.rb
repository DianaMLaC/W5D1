class MaxIntSet
  def initialize(max)
    @store = Array.new(max, false)
  end

  def insert(num)
    @store.insert(num)
    # if (num..@store.length).include?(num)
    #   raise "Out of bounds"
    # end

  end

  def remove(num)
    @store.delete(num)
  end

  def include?(num)
    @store.include?(num)
  end

  private

  def is_valid?(num)
    (num..@store.length).include?(num)
  end

  def validate!(num)
    if !self.is_valid? 
      raise "Out of bounds"
    end

  end
end


class IntSet
  def initialize(num_buckets = 20)
    @store = Array.new(num_buckets) { Array.new }
  end

  def insert(num)
    @store.insert(num)
  end

  def remove(num)
  
    @store.delete(num)
  end

  def include?(num)
    @store.include?(num)
  end

  private

  def [](num)
    bucket = [@store.length % num]
    # optional but useful; return the bucket corresponding to `num`
  end

  def num_buckets
    @store.length
  end
end

class ResizingIntSet
  attr_reader :count

  def initialize(num_buckets = 20)
    @store = Array.new(num_buckets) { Array.new }
    @count = 0
  end

  def insert(num)
    @store.insert(num)
  end

  def remove(num)
    @store.delete(num)
  end

  def include?(num)
    @store.include?(num)
  end

  private

  def [](num)
    bucket = [@store.length]
    # optional but useful; return the bucket corresponding to `num`
  end

  def num_buckets
    @store.length
  end

  def resize!
  end
end
