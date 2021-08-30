# Declaring variables and using data types in Julia

# 5 basic types of data:
# Integers, Floating point numbers, booleans, strings, and characters

# Variable names typically are lowercase. Use underscores if the name
# is too long to be easily read.
first = 1
second = 2.0
stringvar = "This is a string"
initial = 'J'
boolval = true

println(first)
println(second)
println(stringvar)
println(initial)
println(boolval)

# variables can be redefined and change type
first = 1.0
println(first)

# Strings have to be in double quotes. This will error:
# anotherstring = 'hello world'

# Constant values are declared with const and are all uppercase
# Note: this is only useful in the global scope
const MEANING_OF_LIFE = 42
# Constants of the same type *can* be reassigned, but with a warning
MEANING_OF_LIFE = 43
println(MEANING_OF_LIFE)

# Constants of different types cannot be reassigned, this is an error
# MEANING_OF_LIFE = 43.0

# Type Annotation identifies a variable as a particular type
function testfunc()
    x::String = "some text"
    # the next line causes an error, x is defined as an Int
    x = 10
end
#testfunc()

