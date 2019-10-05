module Enumerable
  def my_each_with_index
    i = 0
    while i < self.size
      yield(self[i], i)
      i += 1
    end
    self
  end
end

puts [1,2,3,4].my_each_with_index { |x, i| p "#{x} at index #{i}." }
