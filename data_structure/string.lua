local str = [[
hello world!
my name is wu kui
2 + 2 = 4]]
print(str)
print(type(str))

local a = "hello"
print(#a)

local b = #"hello"
print(b)

local x = 22
local y = tostring(x)
print(
    type(x),
    type(y)
)
print(type(x),type(y))
print(type(tostring(x)))

print("hello\nworld\t!!\v我是wukui\\cc")

local str = "Hello World"
print(string.lower(str),string.upper(str))
print(string.len(str))

local str = "Hello, World!"  
local sub_str = string.sub(str, 1, 8)  -- 提取字符串的前五个字符  
print(sub_str)  -- 输出: Hello, W

--[[
string.char是Lua中用于将一个或多个数字（字符的ASCII码）转换为对应的字符的函数
  ]]
local chars = string.char(72, 101, 108, 108, 111)  -- ASCII码72、101、108、108、111对应的字符是 'Hello'  
print(chars)  -- 输出: Hello

--string.byte是Lua中用于获取字符串中某个字符的ASCII码（字节值）的函数
local str = "A"  
local ascii = string.byte(str)  -- 获取字符串中第一个字符 'A' 的ASCII码  
print(ascii)  -- 输出: 65

local str = " Hua "  
local ascii = string.byte(str, 2)  -- 获取字符串第一个字符的ASCII码（注意前后空格）  
print(ascii)  -- 输出: 76  (对应字符 'L')
print(string.byte(str, 1, 99))

print(string.format("pi: %.2f\nMy age: %i", math.pi, 32))

local str = "Hello World"
print(string.find(str, "orl"))  -- 查找子串 "orl" 在 str 中的位置，返回起始位置和结束位置

local begin, ending = string.find(str, "orl")
print("Begin: ".. begin .. "\nEnding: " .. ending)
