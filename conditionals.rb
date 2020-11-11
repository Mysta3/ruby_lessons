# IF statement
## if condition
    #do this
## end

# if 5 < 7
#     puts "This math statement is true!"
# end

# IF Else If Conditional Statements

# if 5 < 7
#     puts "woe"
# elsif  5 > 7
#     puts " Oh ok"
# end


# grade = 'C'

# if grade == 'A'
#     puts ' Congrats'
# elsif grade == 'B'
#     puts 'Ya made it'
# else 
#     puts "dang"
# end

# AND conditional
# age = 18
# ticket = 'General'

# if age < 21 && ticket == 'General'
#     puts "Your id is now 1234"
# end

# OR conditional 
# age = 22
# ticket = 'Gen'

# if age < 21 || ticket == 'Gen'
#     puts 'You are not allowed to drink'
# end

# NESTED STRINGS

# def meal_plan(time_of_week, time_of_day)
#     if time_of_week == 'weekday'
#         if time_of_day == 'breakfast'
#             puts "Cereal"
#         elsif time_of_day == 'noon'
#             puts "apple"
#         elsif time_of_day == 'dinner'
#             puts "salmon"
#         end

#     elsif time_of_week == 'weekend'
#         if time_of_day == 'breakfast'
#             puts "Candy"
#         elsif time_of_day == 'noon'
#             puts "apple"
#         elsif time_of_day == 'dinner'
#             puts "salmon"
#         end
#     end
# end

# meal_plan('weekend','noon')

# Ternary Operator

## Structure -> condition ? output if condition is true : output if condition is fales
# puts 1 < 2 ? "ok" : 'Dub'
# puts 3.even? ? 'its even' : 'its odd'
# pokemon = 'Pickachu'

# puts pokemon == 'Charizard' ? 'Fireball!!' : 'That is not Charizard!'


# CASE STATEMENT
## replaces multiple if an else if -> more than 3 or 4

# def rate_my_food(food)
#     case food
#     when "Steak" #when food == steak
#         puts "Pass the steak sauce"
#     when "Sushi"
#         puts "this sushi is great"
#     when "Fish"
#         puts "I love fish!!"
#     when "crab", "shrimp", "scallops" # -> equivalent to crab OR shrumo OR scallops
#         puts"I love seafood!!!"
#     else
#         "No"
#     end
# end

# rate_my_food("crab")

# def calc_grade(grade)
#     case grade
#     when 90..100 then "A" #if short lines then you can add all on one line
#     when 80..89 then "B"
#     when 70..79 then "C"
#     when 60..69 then "D"
#     else "F"
#     end
# end

# p calc_grade(72)
# p calc_grade(7)


# UNLESS KEYWORD

## executes when something is false
# password = "doa"

# unless password == "whiskers"
#     puts " [-] Not allowed!"
# else  
#     puts "[+] Access Granted"
# end

#if the password doesn't include a
# unless password.include?("a")
#     puts "no a here!"
# else 
#     puts "A in here!"
# end

# WHILE KEYWORD/ LOOP

# i = 1

# while i < 10
#     puts i 
#     i+=1
# end

# status = true

# while status
#     print "PLease enter username: "
#     username = gets.chomp.downcase
#     print "Enter password: "
#     password = gets.chomp.downcase

#     if username == "alex" && password = "test123"
#         puts "Access granted"
#         status = false
#     elsif username == "quit" && password == "quit"
#         puts "Goodbye"
#         status = false
#     else
#         puts "incorrect combo, try again"
#     end
# end


# UNTIL CONDITION
## do something until it hits a point
# i = 1
# until i > 9
#     puts i
#     i += 1
# end

# FIZZBUZZ CHALLENGES
 #if number is divisible by 3, output Fizz
 #if number is divisible by 5, output Buzz
 #if number is divisible by 3 & 5, output FizzBuzz
 # sample output 3 & 5: FizzBuzz
# def fizzbuzz(number)
#     i = 1

#   while i < number    
#     if i % 3 == 0 && i % 5 == 0
#         puts "Divisible by 3 & 5: Fizzbuzz"
#     elsif i % 3 == 0
#         puts "Divisble by 3: Fizz"
#     elsif i % 5 == 0
#         puts "Divisible by 5: Buzz"
#     else
#         puts "#{i}"
#     end
#     i+=1
#   end 
# end


# fizzbuzz(50)


# STATEMENT MODIFIERS
## used only when body of if statement is 1 line long

# number = 5000

# #before modfier
# if number > 2500
#     puts "Huge"
# end

# unless number > 2500
#     puts "huger number"
# end

# #after modifier
# puts "Huge Number!" if number > 2500
# puts "Huger number" unless number > 2500

# CONDITIONAL ASSIGNMENT
## conditional assignment will only work if varibale is nil

# y = nil
# p y

# y ||=5
# p y
# y ||= 15 #won't execute because y is not NIL



