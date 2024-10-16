for i = 1, 6, 2 do
    print(i)
end

print("-------------")
local a, b, c = 10, 1, -3
for i = a, b, c  do
    if i >= 2 then
        print(i)
    end
end

print("-------------")
local arr = {2, 3, 45, 2}
for i = 1, #arr do
    print(arr[i])
end

print("-------------")
local peeps = 10
while peeps > 0 do
    peeps = peeps -1
    print("People left at party: " .. peeps)
end

print("-------------")
local run = true
local runtime = 0 
while run do
    print("running")
    if runtime == 10 then
        run = false
    end
    runtime = runtime + 1
end

--[[
  repeat until 是一种循环控制结构，与 while 循环类似，但它的执行方式是先执行循环体，然后再判断条件。
  这意味着循环体至少会执行一次。
  ]]
print("-------------")
local sum = 0 
local number
repeat
    print("请输入一个数字(输入0结束): ")
    --"*n": 这是 io.read() 函数的参数，它指定了读取数据的格式。*n 表示读取一个数字（number）,不是数字的话会置为nil
    --number = io.read("*n")
    number = tonumber(io.read())
    sum = sum + number
until number == 0
print("数字之和是: " .. sum)
