
io.output("myFile.txt")  --标准输出被重定向到 myFile.txt

io.write("Hello World")

io.close()

print("--------------")

io.input("myFile.txt") --标准输入被重定向到 myFile.txt

local file = io.read(5)


print(file)

