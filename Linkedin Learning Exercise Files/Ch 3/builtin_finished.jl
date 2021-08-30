# Finished example for built in functions in Learning Julia


# numeric functions
# round, floor, ceil, abs
x = round(30.5)
println(x)

x = round(30.5, RoundUp)
println(x)

y = 29.95
println(floor(y))
println(ceil(y))

z = -15
println(abs(z))

# text i/o
# print, println
print("Hello ")
print("there ")
println("world!")

# printstyled
thestr = "This is some text"
printstyled(thestr)
println()
printstyled(thestr, bold=true)
println()
printstyled(thestr, bold=true, color=:red)
println()

# read standard input
# readline
print("Name? ")
str = readline()
println(str)

# "is" functions
println(isascii("abc"))
println(isascii("αβγ"))

println(isdigit('9'))
println(isdigit('a'))

println(isspace(' '))
println(isspace('\r'))
println(isspace('\n'))
println(isspace('A'))