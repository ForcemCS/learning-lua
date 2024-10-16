local function  displayAge()
    print("You are 5 years old")  
    print("You will be 7 years old in 2 years")  
    print("You were 4 years old last year")
end

displayAge()
print("-------------------------------")

local function  displayAge(age)
    age = age or 5    --没有实例化值的时候默认值是5
    print("You are " .. age .. " years old")  
    print("You will be " .. age + 2 .. " years old in 2 years")  
    print("You were " .. age - 1 .. " years old last year")
    print()
end

displayAge(22)
displayAge()
print("-------------------------------")
