Zombie = {}   --创建了一个空表，并将其赋值给变量 Zombie。这个表将作为我们的“类”的原型。【元表】

function Zombie.init(h,w,s,l) --定义了 Zombie 表中的一个名为 init 的函数。它接受四个参数：身高 (h), 体重 (w), 速度 (s) 和位置 (l)。【可以理解为：这是 Zombie 的初始化函数】
  --[[
    --setmetatable 是一个 Lua 的内置函数，用于将一个表（在这里是 {}，即一个空表）与一个元表（metatable）关联起来。
    这意味着新的空表会继承 Zombie 表的属性和方法。 
    self 变量指向这个新的空表，代表一个将要创建的僵尸实例
    ]]
  local self = setmetatable({}, Zombie)
  self.height = h
  self.weight = w
  self.speed = s
  self.location = l
  return self
end

-- use the metatable

function setup()
  z1 = Zombie.init(176,50,'slow','Forbes & Murray Avenue') --用于初始化游戏或程序
end

function run()
  print(z1.location .. ": " ..
  z1.height .. " cm, " .. z1.weight .. " kg, " .. z1.speed)
end

setup()
run()
