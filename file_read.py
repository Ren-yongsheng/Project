f=open("file","r")
#data=f.read()
# print(data)
# while True:
#     data=f.read(1024)
#     if not data:
#         break
#     print(data)
# data=f.readline(8)
# print(data)
# data=f.readline(8)
# print(data)
# data=f.readlines(15)
# print(data)
for line in f:
    print(line)