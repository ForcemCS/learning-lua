local allowed_chars = "^[a-zA-Z0-9_.-]+$" -- 允许的字符

local filename = "userInput.txt" -- 假设这是用户输入

if not string.match(filename, allowed_chars) then
  print("Invalid filename")
  return
end


local filepath = "./safe_directory/" .. filename -- 将文件限制在安全目录内

local ok, err = pcall(io.output, filepath)
if not ok then
    print("Error opening file:", err)
    return
end

io.write("Hello World")
io.close()

print("--------------")

local ok, err = pcall(io.input, filepath)
if not ok then
    print("Error opening file:", err)
    return
end

local file = io.read(5)
print(file)

