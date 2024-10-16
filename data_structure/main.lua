--[[  
  这是一个多行注释。  
  您可以在这里写下多行文本。  
  ]]  
print("Hello, world!")
print("hello," .. "world!")
print("hello," .. ' ' .. "world!")

--[[
  nil
  number   1 1.12
  string   'hello' "hello world"
  boolean  true false
  table    ....
  ]]

local a 
print(a)
local name = "Jack" 
print("My name is " .. name .. ". I am is years old")

local a = "wu"
local b = "kui"
local full_name = a .. " " .. b
print(full_name)

x = 12
print(
    type(x)
)

local c = "22"
print(tonumber(c))
print(
    type(tonumber(c))
)
print(math.pi)

--[[
  math标准库数学模块
  math.randomseed() 是用于设置随机数生成器的种子的函数。种子是一个数值，用于初始化随机数生成器。相同的种子会产生相同的随机数序列。
  ]]
math.randomseed(os.time())  
print(math.random())
print(os.time())

print(math.random(10))
print(math.random(10, 20))

print(math.min(1, 2, 3))
print(math.sin(30)) --30代表的是弧度，需要进行转换
print(
    math.sin(30 * math.pi / 180)
)
