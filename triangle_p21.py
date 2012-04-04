def max_length(sides):
    sides.sort()
    sides.reverse()
    len_sides = len(sides)
    for i in xrange(len_sides):
        for j in xrange(i + 1, len_sides):
            for k in xrange(j + 1, len_sides):
                if sides[i] < sides[j] + sides[k]:
                    return sides[i] + sides[j] + sides[k]
    return 0

if __name__ == '__main__':
    assert(max_length([2, 3, 4, 5, 10]) == 12)
    assert(max_length([4, 5, 10, 20]) == 0)
