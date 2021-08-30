# Finished example file for working with chars and strings in Julia

# Julia has a specific character type
mychar = 'x'
println(Int(mychar))
println(Char(120))

# Strings are defined using double quotes or triple quotes
mystr = "This is a sample string in Julia"
myotherstr = """
    Hello There
    This is a string
    """

# Get the length of a string
println(length(mystr))

# Access individual characters - note that they are 1-indexed
println(mystr[1])
println(mystr[end])
println(mystr[2:end - 1])

# Iterate over characters
for c in mystr
    print(c)
end
println()

# String concatenation using *
w1 = "Hello"
w2 = "World"
println(w1 * ", " * w2 * ".")

# String interpolation
a = 5
b = 10
println("The result of $a + $b is $(a + b)")

