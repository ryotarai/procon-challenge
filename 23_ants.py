
def min_max(L, x):
    tmp = map((lambda i: abs(i - L/2)), x)
    min_time = min(tmp)
    min_time = L / 2 - min_time

    max_time = max(tmp)
    max_time = L / 2 + max_time

    return (min_time, max_time)


if __name__ == '__main__':
    assert(min_max(10, [2, 6, 7]) == (4, 8))

