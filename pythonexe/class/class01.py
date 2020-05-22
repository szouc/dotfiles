# 内置函数

# # abs
# print(abs(-4))

# # pow
# print(pow(2, 32))

# # round
# print(round(4.5))
# print(round(3.5))
# print(round(5.5))
# print(round(6.5))
def myround(x, n):
    x = x * 10 ** n
    x = int(x + .5)
    x = x * 10 ** (-n)
    return x
print(myround(1443534534567.4999, 0))
# range
# range(0, 5) => iterator
# print(range(0, 5))
# for i in range(0, 5):
#     print(i)
# print(list(range(0, 5)))
# range(start, stop, step = 1)
# [start, stop)
# print(list(range(0, 10, 2)))

# # sum
# s = sum(range(0, 7))
# print(s)

# max, min
# ma = max([2, 8, 4, 3, 6])
# print(ma)

#sorted
# 可迭代对象  iterator
# print(sorted(range(0, 5), reverse=True))

# input
# s = input()
# print(s.upper())

