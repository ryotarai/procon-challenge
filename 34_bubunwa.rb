
def sum(a, k)
  return true if a.inject(0){|memo, value|memo + value} == k
  a.each_with_index do |value, i|
    b = a.dup
    b.delete_at(i)
    return true if sum(b, k)
  end
  return false
end

puts !!sum([1,2,4,7], 13)
puts !sum([1,2,4,7], 15)
