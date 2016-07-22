require_relative "min_max_stack_queue"

def windowed_max_range(arr, w)
  working_arr = arr.dup
  queue = MinMaxStackQueue.new

  #set up first enqueue
  w.times do
    new_el = working_arr.shift
    queue.enqueue(new_el)
  end
  
  max = queue.max
  min = queue.min
  max_range = max - min

  until working_arr.empty?
    queue.dequeue
    queue.enqueue(working_arr.shift)
    new_range =  queue.max - queue.min
    max_range = new_range > max_range ? new_range : max_range
  end

  max_range
end

p windowed_max_range([1, 0, 2, 5, 4, 8], 2) == 4 # 4, 8
p windowed_max_range([1, 0, 2, 5, 4, 8], 3) == 5 # 0, 2, 5
p windowed_max_range([1, 0, 2, 5, 4, 8], 4) == 6 # 2, 5, 4, 8
p windowed_max_range([1, 3, 2, 5, 4, 8], 5) == 6 # 3, 2, 5, 4, 8
