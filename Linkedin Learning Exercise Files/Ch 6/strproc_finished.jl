# Finished string processing example for Learning Julia


# simple string operations - length, size
mystr = "Ångström"
teststr = "jμΛIα" # test string with some Greek characters
println("String length: ", length(teststr))
println("Size of string: ", sizeof(teststr))
println("String length ", length(mystr))
println("Last index ", sizeof(mystr))

# concatenation and repetition operators
teststr = "Hello " * "World"
println(teststr)

teststr = "ABCD"^3
println(teststr)

# search for substrings
teststr = "Julia programming is awesome"
println(findnext("Julia", teststr, 0))
println(occursin("some", teststr))

# pad strings either left or right
teststr = lpad("Test String", 20)
println(teststr)
teststr = rpad("Test String", 20, '*')
println(teststr)

# create a string from an array
arr = ["Lions","Tigers","Bears"]
teststr = join(arr, ", ", " and ")
println(teststr)

