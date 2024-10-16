local  function sum(...)
    local sums = 0 

    for key, value in pairs({...}) do
        print(key, value)
    end

    return "结束"
end

print(sum(1, 3, 7, 11))
print("-----------------")


local  function sum(...)
    local sums = 0 

    for key, value in pairs({...}) do
        sums = sums + value
    end

    return sums
end

print(sum(1, 2, 10))
print("-----------------")

