function npc_behavior(name)  
    while true do  
        print(name .. " is patrolling...")  
        coroutine.yield()  -- 让出控制权  
        print(name .. " is attacking!")  
        coroutine.yield()  
    end  
end  
--[[
  function() ... end: 这是一个匿名函数（也叫闭包）。它没有名字，直接定义并作为参数传递给 coroutine.create()。 
  使用匿名函数的好处是可以直接在需要的地方定义函数，而不用单独声明一个具名函数，使代码更简洁。
  ]]
co1 = coroutine.create(function() npc_behavior("NPC 1") end)  
co2 = coroutine.create(function() npc_behavior("NPC 2") end)  

for i = 1, 4 do  -- 模拟游戏循环  
    coroutine.resume(co1)  
    coroutine.resume(co2)  
end
--[[
  NPC 1 is patrolling...
  NPC 2 is patrolling...
  NPC 1 is attacking!
  NPC 2 is attacking!
  NPC 1 is patrolling...
  NPC 2 is patrolling...
  NPC 1 is attacking!
  NPC 2 is attacking!
  ]]
