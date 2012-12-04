require 'pp'
def how_many_lakes(field)
  row = field.size
  col = field.first.size

  count = 0
  field.each_with_index do |row, y|
    row.each_with_index do |elm, x|
      if elm == 'W'
        remove_lake(field, y, x)
        count += 1
      end
    end
  end

  return count
end

def remove_lake(field, y, x)
  field[y][x] = '.'

  (-1..1).each do |dy|
    (-1..1).each do |dx|
      next if [dy, dx] == [0, 0]
      next_y = y + dy
      next_x = x + dx
      if 0 <= next_y && 
          next_y < field.size && 
          0 <= next_x && 
          next_x < field.first.size &&
          field[next_y][next_x] == 'W'
        remove_lake(field, next_y, next_x)
      end
    end
  end
end

field = [
%w(W . . . . . . . . W W .),
%w(. W W W . . . . . W W W),
%w(. . . . W W . . . W W .),
%w(. . . . . . . . . W W .),
%w(. . . . . . . . . W . .),
%w(. . W . . . . . . W . .),
%w(. W . W . . . . . W W .),
%w(W . W . W . . . . . W .),
%w(. W . W . . . . . . W .),
%w(. . W . . . . . . . W .),
]

puts how_many_lakes(field) == 3