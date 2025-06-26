
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
        print(k)
        break

print(d)



# class Login():
#     users = {'User1': 'password1', 'User2': 'password2', 'User3': 'password3'}
#
#     def login(self):
#         self.username = input("Enter username: ")
#         self.password = input("Enter password: ")
#
#         if self.username in self.users and self.users[self.username] == self.password:
#             print("Login successful")
#         else:
#             print("Invalid username or password")
#
# login_instance = Login()
#
# login_instance.login()
