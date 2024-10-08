import math

ans = 0
for i in range(2, 2000001):
    flag = True
    for j in range(2, int(math.sqrt(i)) + 1):
        if i % j == 0:
            flag = False
            break
    ans += flag * i

print(ans)