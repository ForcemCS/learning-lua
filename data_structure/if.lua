if false then
    print("wukui")
end
---------
if 2 then
    print("wukui")
end
--------
local age = 18

if age > 17 and age < 60 then
    print("You may enter")
end

if (age > 17) or (age < 60) then
    print("You may enter")
end
----------
local age =  20
if not (age < 17) then
    print("You may enter")
end

--~= 是用于判断两个值是否不相等
local a = 5  
local b = 10  
if a ~= b then  
    print("a 和 b 不相等")
else  
    print("a 和 b 相等")  
end
------
local age = 33
local old = false
if age > 30 then
    old = true
end
print(old,type(old))
