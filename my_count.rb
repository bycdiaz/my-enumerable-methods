module Enumerable

  def my_each
    index = 0
    while index < self.length
      yield(self[index])
      index += 1
    end
  end

  def my_count num = nil
    count = 0
      if num 
        self.my_each {|elem| count += 1 if elem == num}
      elsif block_given?
        self.my_each {|elem| count += 1 if yield(elem)}
      else
        count = self.length
      end 
    count
  end
  
end


puts [34,5,6,23,12,34,88,2].my_count
puts [34,5,6,23,12,34,88,2].my_count(3)
puts [34,5,6,23,12,34,88,2].my_count {|num| num < 25}