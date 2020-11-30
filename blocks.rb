#grooup collection of statements that immediately follow a method call
#not an object
#add on to the method
#specified with curly braces or do keyword

#10.times #executes a process a certain number of times

# 10.times{ puts 'I have pie' }

#use parenthesis for 1 line blocks

#alt syntax

#use do end for multi line blocks
#|| <- block variable
#block variables exists within the block
# 3.times do |count|
#     count += 1
#     puts "We are currently on loop number #{count}"
#     puts 'it is cool'
#     puts 'test is fine'
# end

# 3.times { |count| puts"we are on # #{count}"}

# 10.times do |i|
#     puts "#{3 * (i + 1)}"
# end 


#YIELD KEYWORD
## transfers control from method to the block that it is within.
## this keyword will stop the execution of the method until what is happening within the attached block is done.
## blocks can be created using do end as well
## do not write the return keyword in a block : this will produce an error
# def pass_control
#     puts "This is inside the method"
#     yield # -> will come out of the method to execute what is in the attached block
#     puts "Back inside the method"
# end

# pass_control { puts "Now I am inside the block"} # -> method with attached block

# ## can pass a variable to yield
# ## that variable will be whatver is in the attached block
# def who_am_i
#     adjective = yield
#     puts "I am very #{adjective}"
# end

# who_am_i {"handsome"}
# who_am_i do 
#     "genius"
# end

## can yield multiple times
# def multi_pass
#     puts "Inside method"
#     yield
#     puts "Back inside the method!"
#     yield
# end

# result = multi_pass { puts "Inside the block bihhh"} 
# p result # -> returns nil because puts returns nil not the string
# result = multi_pass { "Inside the block bihhh"} # -> returns the string
# p result 