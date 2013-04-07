tasks = [
  [1, 3],
  [2, 5],
  [4, 7],
  [6, 9],
  [8, 20],
];

last_selected_end = -1
count = 0
loop do
  available = tasks.select do |task|
    last_selected_end < task[0]
  end.sort do |a, b|
    a[1] <=> b[1]
  end
  break if available.empty?
  count += 1
  selected = available.first
  last_selected_end = selected[1]
  tasks.delete selected
end

puts count

