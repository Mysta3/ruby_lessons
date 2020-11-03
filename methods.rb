# gets  - takes user input
# chomp removes the new line character at the end of a string.

# puts "hi, what's your name?"
# name = gets.chomp

# puts "Great! What's your age?"
# age = gets.chomp.to_i #keep data as it shold  be in its primitive states

# puts "Cool, So your name is #{name} and you are #{age} years old!"

#FLOATS
# p 10.9.class 
# p 10.5.floor #round down
# p 10.5.ceil #round up
# p 3.5.round #rounds
# p 3.568.round(2) #accepts arguments to round decimals
# p 3.568.abs #absolute will always be positive

#upto downto Methods

# 5.downto(1) { |i| puts "Countdown: #{i}"}
# #downto accepts argument that you want to count down to. 

# 1.upto(5) {|i| puts "Let's count #{i}"}

#step method
#1.step(max, increment){ things you want to do}

# 1.step(100, 5) {|num| puts num}
# 0.step(85, 7) do |num|
#     puts"Here we go again"
#     puts "now on #{num}"
# end