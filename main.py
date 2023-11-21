# a1 = input("enter a string: ")
# for i in a1:
#     if i.isupper():
#         print(i)
#
#
# a = input("enter a string: ")
# count = 0
# for letter in a:
#     if letter.isupper():
#         count += 1
# return count
#
# def count_uppercase_letters(input_string):
#     count = 0
#     for letter in input_string:
#         if letter.isupper():
#             count += 1
#     return count
#
# print(count_uppercase_letters("Hello World"))
# input_string = "LeladdharJahnavI"
# count = sum(1 for letter in input_string if letter.isupper())
# print(count)


a = "teeter"
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
        print(k)
        # break

print(d)