--[[
  1.协程的创建: coroutine.create() 函数用于创建一个新的协程。它接受一个函数作为参数，这个函数就是协程的主体逻辑
  2.coroutine.resume() 函数用于启动或恢复一个协程的执行。第一次调用 coroutine.resume() 时，协程会从其主体函数的开头开始执行
  3.coroutine.yield() 函数用于挂起当前协程的执行，并将控制权返回给调用 coroutine.resume() 的地方
  4.coroutine.status() 函数用于获取协程的当前状态
      "running": 协程正在运行。
      "suspended": 协程被挂起。
      "normal":    协程运行结束，但没有错误。
      "dead":      协程运行结束，并且有错误。
  ]]
local routine_1 = coroutine.create(  
function ()  
    for i = 1, 10, 1 do  
        print("(Routine 1): " .. i)  
        if i == 5 then  
            coroutine.yield()  
        end  
    end  
end  
)

local routine_func = function ()
    for i = 11, 20 do
        print("(Routine 2): " .. i)
    end
end

local routine_2 = coroutine.create(routine_func)

coroutine.resume(routine_1)
coroutine.resume(routine_2)
coroutine.resume(routine_1)
print(coroutine.status(routine_1))
print(coroutine.status(routine_2))
