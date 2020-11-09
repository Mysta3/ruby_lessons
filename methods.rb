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

# INCLUDE METHODS
## checks to see if your arg is included in the object
## can normalize string (set it to all lowercase or all uppercase)

# name = "Naruto Uzamaki"

# p name.include?("N")
# p name.include?("z")


# EMPTY and NIL methods

## boolean methods
## only return true or false

## string is empty -> empty?
##nil objects mean nothingness

# name = "Goofy troupe"
# other =''
# last_name = name[400, 4]
# p last_name.nil?
# p other.empty?


# CREATING A METHOD
#starts with def ends with the word end

# def introduce_myself
#     puts "I am lit"
#     puts "I am Choz3n"
#     puts "I am Faithful"
# end
# introduce_myself() #parentheses are optional

# Local Variables 
## variables defined within methods are not seeable or reachable outside of the method

# def hello
#     expression = "Hello World!"
#     p expression.swapcase
# end

# hello()

# ARGUMENTS & PARAMETERS
## can have 1 or more inputs

# def message()
#    puts "Who are you sending a message to?"
#    to_name = gets.chomp
#    puts "Who is the message from?"
#    from_name = gets.chomp
#    puts "What is your message?" 
#    message = gets.chomp
#    time = Time.now
#    puts "---BEGIN OF MESSAGE ---" 
#    puts "Message Received at: #{time.strftime("%I:%M %p")}"
#    puts "[+] To: #{to_name}: #{message}"
#    puts "--- From: #{from_name}"
#    puts "---END OF MESSAGE---"
# end

# puts "Do you want to send another message?"

#If yes call message again, if no print goodbye

# RETURN VALUES
## explicit returns happen when you use the word return
## without the return it will return the last method used in the last line.
## use return when you need to return from a method early.
# def add(num1, num2)
#     puts "calculating"
#     return num1 + num2 #explicit return
# end

# p add(3,5)



# respond_to? Method
## tests to see if a particular method can be used on it.
# num = 100

# p num.respond_to?("next") # -> true
# p num.respond_to?("length") # -> false, Number objects do not have a length method

# if num.respond_to?("next")
#     p num.next
# elsif num.respond_to?("length")
#     p num.length
# end
#symbols used to give something a label
## use case: lightweight, not using as much memory as its string syntax -> .respond_to?("next")
  ## returns true or false
  ##can use it to check if something exist to safe guard against the program erroring out
# puts num.respond_to?(:next)

# DEFAULT or OPTIONAL PARAMETERS
## should be placed at the end of the params list

# def make_phone_call(number, international_code = 1, area_code = 443)
#     puts "Dialing..."
#     puts "Calling: #{international_code}-#{area_code}-#{number}"
# end

# make_phone_call(123456)

# Call Method from within another method or from string interpolation
# def add(a,b)
#     a + b
# end

# def sub(a,b)
#     a - b
# end

# def multi(a,b)
#     a * b 
# end

# def calculated(a, b, operation="add")
#     if operation == "add"
#        p "the result of adding is #{add(a,b)}"
#     elsif operation == "sub"
#        p sub(a,b)
#     elsif operation == "multi"
#       p  multi(a,b)
#     end
# end

# calculated(5, 4, "sub")
