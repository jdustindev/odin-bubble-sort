def bubble_sort(numbers)
  new_numbers = numbers.dup
  n = new_numbers.length
  loop do
    swapped = false
    for i in 1..n - 1
      if new_numbers[i - 1] > new_numbers[i]
        new_numbers[i - 1], new_numbers[i] = new_numbers[i], new_numbers[i - 1]
        swapped = true
      end
    end
    break if !swapped
  end
  new_numbers
end

numbers = [4, 3, 78, 2, 0, 2]
p bubble_sort(numbers)
p numbers   # make sure original array is not altered
