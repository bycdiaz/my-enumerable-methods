module Enumerable
  def my_each
    i = 0
    while i < self.size
      yield(self[i])
      i += 1
    end
    self
  end

  def my_all
    result = false
    self.my_each {|elem| yield(elem) ? result = true : result = false }
    result
  end
end

puts [100,54,1,2,3,4].my_all { |num| num.is_a? Integer }
puts [100,54,1,2,3,4].my_all { |num| num.is_a? String }