L = [8, 5, 8]

def cost_to_cut(l)
  l = l.sort
  cost = 0
  while (l.size > 1)
    a = l.shift
    b = l.shift
    cost += a + b
    l.unshift a + b
  end
  cost
end

puts cost_to_cut(L) == 34


