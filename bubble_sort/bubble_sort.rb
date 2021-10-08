# frozen_string_literal: true

def bubble_sort(array)
  (0...array.length - 2).each do
    (0...array.length - 1).each do |j|
      array[j], array[j + 1] = array[j + 1], array[j] if array[j] > array[j + 1]
    end
  end
  array
end

bubble_sort([10, 2, 6, 2, 1, 5, 8, 6, 0, 2, 8, 9])
bubble_sort([10, 2, 7, 1, 5])
bubble_sort([4, 3, 78, 2, 0, 2])
