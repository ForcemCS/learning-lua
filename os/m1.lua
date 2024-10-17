local past = os.time({
    year = 2000,
    month = 10,
    day= 1,
    hour = 12,
    min = 20,
    sec =30
})

print(os.time() - past)
print(os.difftime(os.time(), past))
