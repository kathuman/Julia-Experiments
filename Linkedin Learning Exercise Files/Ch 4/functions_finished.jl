# Finished functions example for Learning Julia

# Functions are defined with the function keyword and are usually
# lowercase names, optionally with underscores if they are hard to read
function myfunc(a, b)
    println("This is a function")
    # functions return the last computed value even with no return statement
    return a + b
end

result = myfunc(10, 15)
println(result)

# function arguments can have default values
function foo(a, b, z = 10)
    return (a + b) * z
end
println(foo(2, 3))
println(foo(2, 3, 5))

# you can also use keyword arguments - define them after a semicolon
function bar(a, b ; multiplier = 10)
    return (a + b) * multiplier
end
println(bar(4, 5))
println(bar(multiplier = 5, 4, 5))

# The Julia shorthand way of defining a function 
myfunc3(x, y) = (a = x - 1; 2a + y)
result = myfunc3(3, 4)
println(result)

# use the ... notation for variable arguments
function summit(args...)
    sum = 0
    for a in args
        sum += a
    end
    return sum
end
println(summit(1, 5, 10))
println(summit(2, 4, 6, 8))

