io.input("num.txt")

local file1= io.read("*line")

io.close()

print(file1)

print("--------------")

io.input("num.txt")

local file1, file2 = io.read("*number", "*line")

print(file1 + 12  .. ":" ..  file2)
