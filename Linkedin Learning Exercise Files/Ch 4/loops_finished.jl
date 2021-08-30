# Finished loops example for Learning Julia

# basic for loop
for i in 1:10
    println("i: ", i)
end

# can be any iterable, not just a range
for i in ["Bingo","Bango","Bongo","Irving"]
    println(i)
end

# Nested for loop
for i in 1:3, j in 2:4
    println(i, ", ", j)
end

# while loop
i = 1
while i <= 5
    println(i)
    global i += 1
end

# Using enumeration within a loop
teams = ("Giants", "Wizards", "Dragons", "Knights", "Kings")
for (idx, val) in enumerate(teams)
    println(idx, ", ", val)
end

# Loop control - breaking and continuing
for i in 1:10
    if i % 3 == 0
        continue # skip this loop iteration
    elseif i > 7
        break # stop the loop
    end
    println(i)
end

