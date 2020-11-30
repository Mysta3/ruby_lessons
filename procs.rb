# Object
## functions like a saved block
## User case: when you have a block that you want to run over and over again you can use a Proc
## used to avoid repeating code
## can return boolean values
## assigns nil to whatever argument is not passed in

# cubes = Proc.new { |num| num ** 3}
# squares = Proc.new {|num| num ** 2}

# a = [1,2,3,4]
# b = [5,6,7,8]
# c = [11,12,13,14]

# # a.map{|num| num **3 } -> not using Proc
# a_cubes = a.map(&cubes) # -> using Proc, must use & when passing Proc variable
# b_cubes = b.map(&cubes)
# b_squares = b.map(&squares)
# c_cubes = c.map(&cubes)

# p a_cubes
# p b_cubes
# p b_squares
# p c_cubes

# ages = [10,60,83,30,43,25]
# is_old = Proc.new do |age|
#     age > 65
# end

# p ages.select(&is_old)

# BLOCK_GIVEN? 
## helps with security to make sure a block is attached
## is not attached to a method
# def pass_control_on_condition
#     puts "Inside the method"
#     if block_given?
#         yield
#     end
#     puts "back inside method"
# end

# pass_control_on_condition # -> no errors occur because block_given?
# pass_control_on_condition {puts "inside the block"}

# YIELD WITH ARGUMENTS
## pass from method to block through yield keyword
# def speak_the_truth
#     yield("Alex", 16) if block_given?
# end

# speak_the_truth {|name, num| puts "#{name} is brillant since #{num}"}

# def num_eval(num1,num2,num3)
#     puts "inside method"
#     yield(num1,num2,num3) if block_given?
# end

# result = num_eval(5,10,15) {|num1, num2, num3| num1 + num2 + num3}

# p result

# hi = Proc.new {puts "hi there"}
# 5.times(&hi)

# PASS A RUBY METHOD AS A PROC
## add & and use a symbol so that you can use it as a argument

# p ["1", "2", "3"].map(&:to_i) # -> using proc
# p [1, 2, 3].map(&:to_s) # -> using proc
# p [1, 2, 3].select {|num| num.even?} # -> not using proc
# p [1, 2, 3].select(&:even?) # -> using proc

# METHODS WITH PROC PARAMS
## use ampersand when passing procs as arguments
# def talk_about(name, &myprc) # -> use & here
#     puts "Let me tell you about #{name}."
#     myprc.call(name)
# end

# good_things = Proc.new do |name|
#     puts "#{name} is genius"
#     puts "#{name} is great"
# end

# bad_things = Proc.new do |name|
#     puts "#{name} is ug"
#     puts "#{name} is annoying"
# end

# talk_about("Alex", &good_things) # -> use & here
# talk_about("Alex", &bad_things)