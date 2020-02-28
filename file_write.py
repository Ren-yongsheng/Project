# f =open("file","w")
# fi =open("file","a")
# f.write("nihao\n")
# f.write("buhao\n")
# fi.write("\tgan")
# l=["\nnihao\n","hi\n"]

with open("file") as fil:
    data=fil.read()
    print(data)
# fi.writelines(l)
# f.close()