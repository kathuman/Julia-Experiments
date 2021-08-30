# Finished dictionaries example for Learning Julia
# Dictionaries map unique keys to individual values

# Create a new dictionary
d1 = Dict("a" => 1, "b" => 2, "c" => 3)
println(d1)

d2 = Dict{String,String}()
d2["key1"] = "val1"
println(d2)

# look up an item
println(d1["b"])

# Add an item to a dictionary
d1["d"] = 4
println(d1)

# Test to see if an item is in a dictionary
println(haskey(d1, "e"))

# remove an item from a dictionary
delete!(d1, "c")
println(d1)

# get all the keys and values as arrays
println(keys(d1))
println(values(d1))

# Iterate over a dictionary's keys and values
for (key, value) in d1
    println(key, ", ", value)
end

