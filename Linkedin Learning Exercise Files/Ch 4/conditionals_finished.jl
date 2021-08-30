# Finished conditional example for Learning Julia

# Create an if-else conditional
x = 5

if x < 10
    println("x is small")
else
    println("x is big")
end

# multiple conditions can be specified with if-elseif-else
if x < 10
    println("x is small")
elseif x >= 10 && x < 25
    println("x is medium")
else
    println("x is big")
end

# The ternary operator can condense a comparison
println(x < 10 ? "x is less than 10" : "x is 10 or greater")

