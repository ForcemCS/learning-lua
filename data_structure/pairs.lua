local my_table = {
    name = "WU KUI",
    age = 30,
    city = "Shanghai"
}

for key, value in pairs(my_table) do
    print(key .. ":" .. " " ..  value)
end

--[[
  注意: pairs() 遍历的顺序不保证，特别是对于包含非数字键的 table
  ]]
