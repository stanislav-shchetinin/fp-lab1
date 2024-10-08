def d(n):
    res = 0
    for x in range(1, n // 2 + 1):
        if n % x == 0:
            res += x
    return res

def sum_of_pairs(n):
    res = 0
    for x in range(1, n + 1):
        if d(d(x)) == x and d(x) != x:
            res += x
    return res

print(sum_of_pairs(10000))
