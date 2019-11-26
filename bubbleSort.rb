def bubble_sort_by(arr)
  
  loop {
    swapCount = 0

    for i in 0...arr.length
      nextNum = i+1
      if yield(arr[i],arr[nextNum]) == 1
        temp = arr[i]
        arr[i] = arr[nextNum]
        arr[nextNum] = temp

        swapCount += 1
      end
    end

    break if swapCount == 0
  }

  
end

array = [1,3,4,6,2,1]
array2 = ['a', 'c', 'b']

bubble_sort_by(array){|x,y| y <=> x}

puts array