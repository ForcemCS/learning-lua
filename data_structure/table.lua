local arr = {2, true, "hello world", 2.4}
print(#arr)
print(arr[3], arr[#arr])

local arr = {3, 10, 2, 33}
table.sort(arr)
print(arr[1])


print("---------")
local arr = {3, 10, 2, 33}
for i = 1, #arr do
    print(arr[i])
end


print("---------")
local arr = {3, 10, 2, 33}
table.insert(arr, 2, "lol")
for i = 1, #arr do
    print(arr[i])
end

print("---------")
local arr = {3, 10, 2, 33}
table.remove(arr, 2)
for i = 1, #arr do
    print(arr[i])
end


print("---------")
local arr = {"hello", "world", "I", "am is wukui"}
print(table.concat(arr, "..."))


print("---------")
local arr = {
    {1, 3, 5},
    {2, 4, 7, "hello"},
    {99, 989}
}
print(#arr[2])
print(arr[2][4])

print("---------")
local arr = {
    {1, 3, 5},
    {2, 4, 7, "hello"},
    {99, 989}
}
for i =1, #arr do
    for j = 1, #arr[i] do
        print(arr[i][j])
    end
end
