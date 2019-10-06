module Enumerable
  def my_none?
    i = 0
    while i < self.size
      if yield(self[i])
        return false
      end
      i += 1
    end
    true
  end  
end

puts [3,3,65,7].my_none? {|x| x.is_a?(String) }