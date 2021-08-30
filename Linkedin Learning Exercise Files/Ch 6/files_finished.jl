# Finished file system example for Learning Julia

# get the current workding dir
print("Current working directory: ")
println(pwd())

# read the contents of the current directory
print("Current directory contents: ")
println(readdir())

# open a file for writing
function createafile(filename::String, text::String = "This is some text")
    io = open(filename, "w")
    write(io, text)
    close(io)
end

createafile("mytestfile.txt", "Hello world!")

# open a file for reading
function readafile(filename::String)
    io = open(filename, "r")
    content = read(io, String)
    println(content)
end

readafile("mytestfile.txt")

# append data to an existing file
function appendtoafile(filename::String, text::String)
    io = open(filename, "a")
    write(io, text)
    close(io)
end

appendtoafile("mytestfile.txt", "This text is added")
readafile("mytestfile.txt")

# rename an existing file
function renamefile()
    mv("mytestfile.txt", "newfilename.txt")
end

renamefile()

# delete a file
# rm("newfilename.txt")
