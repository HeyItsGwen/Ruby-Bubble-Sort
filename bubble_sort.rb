# frozen_string_literal: true

def bubble_sort(arr)
  loop {
    swap_count = 0

    (0...arr.length).each { |i|
      next_num = i + 1

      unless arr[next_num].nil?
        if arr[i] > arr[next_num]
          temp = arr[i]
          arr[i] = arr[next_num]
          arr[next_num] = temp

          swap_count += 1
        end
      end
    }

    break if swap_count.zero?
  }
  arr
end

def bubble_sort_by(arr)
  loop do
    swap_count = 0

    (0...arr.length).each do |i|
      next_num = i + 1
      next if arr[next_num].nil?

        comparison = yield arr[i], arr[next_num]

      next unless comparison.positive?

        temp = arr[i]
        arr[i] = arr[next_num]
        arr[next_num] = temp

        swap_count += 1
    end
    break if swap_count.zero?
  end
  arr
end

array = [1, 4, 3, 1]

unsorted = %w[hi hello hey]
puts bubble_sort_by(unsorted) { |left, right| right.length-left.length  }
puts bubble_sort(array)
