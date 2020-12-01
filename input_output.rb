# File is a class to call and open is a method to read from a ftext file.
## default 2nd argument is called r
# File.open("notes.txt").each do |line|
#     puts line
# end

# WRITE TO A TEXT FILE
## second argument is w
## will create a file if it does not exist
## will overwrite file if it does exist
# File.open("myFirstFile.txt", "w") do |file|
#     file.puts "This is cool to create from ruby"
#     file.write "No line breaks b" # -> write does not add a line break
#     file.puts "WOOOOW"
# end

# APPEND 
## open the file if it exists and add to a file
## if it does not exist, then it will be created
# File.open("myFirstFile.txt", "a") do |file|
#     file.puts "This is from append"
#     file.puts" -------- "
#     file.puts "I like puts better"
# end

# RENAME & DELETE
## rename takes 2 arguments (current file name, new file name)
# File.rename("myFirstFile.txt", "somethingBetter.txt")

# File.delete("notes.txt")

# Can use File.exist? to check if the file exists before doing any operation.

# COMMAND LINE ARGUMENTS
## arguments given to a ruby program when ran from a terminal
## receives arguments within an array named ARGV
# ARGV.each do |arg|
#     num = arg.to_i
#     puts "This is #{num}"
# end

# LOAD METHOD
## loads file and executes code
## must contain extension
##can be used within an if statement 
# puts "Beginning"
# load "end.rb"
# puts "great! That was fun"
# load "./end.rb"

# REQUIRE & REQUIRE_RELATIVE methods
## will load a file once

# require "./end"
# #imports fiels from anywhere
# require_relative "end"
# ## looks for files within the same directory