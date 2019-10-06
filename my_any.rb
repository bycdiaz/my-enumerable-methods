module Enumerable

  def my_each
    i = 0
    while i < self.size
      yield(self[i])
      i += 1
    end
    self
  end

  def my_any?
    result = false
    self.my_each {|item| result = true if yield(item)}
    result
  end
end

# print test_arr.any? {|num| num.is_a? Integer}
# print test_arr.any? {|num| num.is_a? String}
puts [100,54,1,2,3,4].my_any? {|num| num.is_a? Integer}
puts [100,54,1,2,3,4].my_any? {|num| num.is_a? String}