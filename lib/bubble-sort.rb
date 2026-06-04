def bubble_sort(numbers)
  left = 0
  right = 1
  times = numbers.length - 2
  repeat = true

  while repeat
    shift = 0

    0.upto(times) do
      left_num = numbers[left]
      right_num = numbers[right]

      if left_num > right_num
        numbers[left] = right_num
        numbers[right] = left_num
        shift += 1
      end

      left += 1
      right += 1
    end

    if shift == 0
      repeat = false
    else
      left = 0
      right = 1
    end
  end

  numbers
end

p bubble_sort([4, 3, 78, 2, 0, 2])
