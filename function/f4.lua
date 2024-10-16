local function counter()
    local count = 0 
    
    return function()
        count = count + 1
	return count
    end
end

print(counter())
---上边的代码是counter函数返回了两一个函数，并且是只是打印了这个匿名函数的内存地址等信息
local function counter()
    local count = 0 
    
    return function()
        count = count + 1
        return count
    end
end

local x = counter()  --存储了一个匿名函数
print(x()) --要想得到值，我们需要执行这个匿名函数x
--此时在函数内部count的值已经是1了,当我们再次执行print(x())得到的结果是2
print(x())  --2
