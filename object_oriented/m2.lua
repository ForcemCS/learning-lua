local function Pet(name) --创建了Pet对象
  name = name or "Luis"
  return {
    name = name,
    status = "Hungry",
    feed = function(self)  --定义Pet对象的一个方法，名字为feed
      print("test")
      self.status = "Full"
    end
  }
end

local function Dog(name, breed)  
    local dog = Pet(name)   --狗对象拥有宠物的所有属性和方法 
    dog.breed = breed       --为狗对象添加一个 breed (品种) 属性。 
    dog.loyalty = 0  

    dog.isLoyal = function(self)     --为狗对象添加一个 isLoyal 方法，用于判断狗是否忠诚。 
        return self.loyalty >= 10    --如果忠诚度大于等于 10，返回 true，否则返回 false。
    end  

    dog.feed = function(self)  --定义Pet对象的一个方法，名字为feed
      print("test")
      self.status = "Full"
      self.loyalty = self.loyalty + 5
    end

    dog.bark = function(self)  
        print("Woof Woof")  
    end  

    return dog  
end  

local lassy = Dog("Lassy", "Poodle") 
lassy:feed()
lassy:feed() 

if lassy:isLoyal() then  
    print("Will protect against intruder")  
else  
    print("Will NOT protect against intruder")  
end

print(lassy.breed)
lassy:bark()
