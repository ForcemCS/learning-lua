-- 写入文件  
local file_out = io.open("myFile.txt", "w")  -- 打开文件用于写入  
if file_out then  
    file_out:write("Hello World")  -- 向文件写入 "Hello World"  
    file_out:close()  -- 关闭文件  
else  
    print("打开文件以写入时出错。")  
end  

print("--------------")  

-- 读取文件  
local file_in = io.open("myFile.txt", "r")  -- 打开文件用于读取  
if file_in then  
    local content = file_in:read(5)  -- 读取前 5 个字符  
    file_in:close()  -- 关闭文件  
    print(content)  -- 打印读取的内容  
else  
    print("打开文件以读取时出错。")  
end
