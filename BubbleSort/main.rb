class BubbleSort
  def bubble_sort(list)
    sorted = false
    length = list.length
    i = 0

    until i == length - 1 do
      for k in 0..(length - 1 - i)
        nxt = list[k + 1] || list[k]
        if list[k] > nxt
          aux = list[k]
          list[k] = nxt
          list[k + 1] = aux
        end        
      end
      i += 1
    end    
    list
  end
end

b = BubbleSort.new
puts b.bubble_sort([3,2,1]).inspect
puts b.bubble_sort([4,3,78,2,0,2]).inspect
puts b.bubble_sort([3,1,2]).inspect
