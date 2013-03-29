require 'pp'

MAP = <<EOS
#S######.#
......#..#
.#.##.##.#
.#........
##.##.####
....#....#
.#######.#
....#.....
.####.###.
....#...G#
EOS

def min_turn(maze)
  maze = maze.split("\n").map{|row| row.split("")}
  dist = Array.new(maze.size) {|i| Array.new(maze.first.size, -1)}

  # find start
  queue = []
  maze.map.with_index do |row, i|
    found = row.index "S"
    if found
      y, x = i, found
      dist[y][x] = 0
      queue << [y, x]
      break
    end
  end

  y, x = nil, nil
  while queue.any?
    y, x = queue.shift
    break if maze[y][x] == "G"
    [[1,0],[0,1],[-1,0],[0,-1]].each do |move|
      new_y = y + move[0]
      new_x = x + move[1]
      next unless 0 <= new_y && new_y < maze.size
      next unless 0 <= new_x && new_x < maze.first.size
      next unless dist[new_y][new_x] == -1 # already visited?
      next if maze[new_y][new_x] == "#"
      queue.push [new_y, new_x]
      dist[new_y][new_x] = dist[y][x] + 1
    end
  end

  dist[y][x]
end

puts min_turn(MAP) == 22

