R = 10
POINTS = [1, 7, 15, 20, 30, 50]

def mark(points, r)
  i = 0
  ans = 0
  while (i < points.size)
    # s is the most left point which is not covered yet
    s = points[i]
    i += 1
    while (i < points.size && points[i] <= s + r)
      i += 1
    end

    # p is the point which is going to be marked
    p = points[i - 1];
    while (i < points.size && points[i] <= p + r)
      i += 1
    end

    ans += 1
  end
  ans
end

puts mark(POINTS, R) == 3
