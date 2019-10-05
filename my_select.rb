module Enumerable
  def my_select
    i = 0
    result_array = []
    while i < self.size
      if yield(self[i]) == true
        result_array << self[i]
      end
      i += 1
    end
    result_array
  end
end

puts [1, 2, 3, 4, 5, 6].my_select { |x| x.even? }
