
a = input("enter a string: ")
count = 0
d = {}
l = sorted(a)
for i in l:
    if i not in d:
        d[i] = 1
    else:
        d[i] = d[i] + 1
for k,v in d.items():
    if v == 1:
        print(k)s
        # break

print(d)