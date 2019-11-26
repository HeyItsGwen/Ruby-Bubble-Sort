# frozen_string_literal: true

def bubble_sort_by(arr)
  loop do
    swap_count = 0

    (0...arr.length).each do |i|
      next_num = i + 1
      next unless yield(arr[i], arr[next_num]) == 1

      temp = arr[i]
      arr[i] = arr[next_num]
      arr[next_num] = temp

      swap_count += 1
    end

    break if swap_count.zero?
  end

  arr
end

def bubble_sort(arr)
  bubble_sort_by(arr) { |x, y| x <=> y }
end
