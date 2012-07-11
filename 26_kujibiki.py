
def binary_search(k, x):
    '''search k in x'''
    n = len(k)
    kk = sorted(k)
    
    r = 0
    l = n - 1

    while r <= l:
        c = int((r + l) / 2)
        if kk[c] == x:
            return True
        if kk[c] < x:
            r = c + 1
        else:
            l = c - 1

    return False



def can_win(m, k):
    c_plus_d = []
    for c in k:
        for d in k:
            c_plus_d.append(c + d)

    for a in k:
        for b in k:
            if binary_search(c_plus_d, m - a - b):
                return True
    return False

if __name__ == '__main__':
    assert(binary_search([1, 3, 2, 4], 3) == True)
    assert(binary_search([1, 3, 2, 4], 5) == False)

    assert(can_win(10, [1, 3, 5]) == True)
    assert(can_win(9, [1, 3, 5]) == False)
