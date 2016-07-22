def windowed_max_range(arr, w)
  current_max_range = nil
  s_idx = 0
  e_idx = w - 1
  until e_idx == arr.length
    window = arr[s_idx..e_idx]
    range = window.max - window.min
    current_max_range = range if current_max_range.nil? ||
      range > current_max_range
    s_idx += 1
    e_idx += 1
  end
  current_max_range
end

p windowed_max_range([1, 0, 2, 5, 4, 8], 2) == 4 # 4, 8
p windowed_max_range([1, 0, 2, 5, 4, 8], 3) == 5 # 0, 2, 5
p windowed_max_range([1, 0, 2, 5, 4, 8], 4) == 6 # 2, 5, 4, 8
p windowed_max_range([1, 3, 2, 5, 4, 8], 5) == 6 # 3, 2, 5, 4, 8
