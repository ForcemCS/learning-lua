local function counter(number, end_num)  
    local count = number + 1  

    if (count < end_num) then  
        print(count)  
        return counter(count, end_num)  
    end  

    return count  
end  

print(counter(10, 15))

print("改进后的代码如下")

local function counter(number, end_num)  
    for count = number + 1, end_num do  
        print(count)  
    end  
end  

counter(10, 15)
