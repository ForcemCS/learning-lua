local function Pet(name) --创建了Pet对象
  name = name or "Luis"
  return {
    name = name,
    status = "Hungry",
    feed = function(self)  --定义Pet对象的一个方法，名字为feed
      print(name .. " is fed")
      self.status = "Full"
    end
  }
end

local cat = Pet("Kitty")
local dog = Pet()

print(cat.status)
cat:feed() --调用方法，将改变对象
--cat.feed(cat)
print(cat.status)

print(dog.status)
