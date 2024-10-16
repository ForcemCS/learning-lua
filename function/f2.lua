local function sum(num1, num2)
    return num1 + num2
end

local x = sum(1, 2)
print(x)
print("------------------")

local function sum(n1, n2)
    _G.y = n1 + n2
    return y  --定义函数要返回的部分
end
sum(2, 3)
print(y)
print("------------------")

local function sum(n1, n2)
  local y = n1 + n2 
  return y
end

local result = sum(2, 3)
print(result) -- 输出 5
print("------------------")

local add10 = function(number)
    local outcome = 10 + number
    return number, outcome
end

local stored, output = add10(20)
print(stored .. " add 10 to it resilt is: " .. output)
print("------------------")


local add10 = function(number)
    local outcome = 10 + number
    return number, outcome
end

local _, output = add10(20)
print("Add 10 to it resilt is: " .. output)
print("------------------")
