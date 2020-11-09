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
pokemon = 'Pickachu'

puts pokemon == 'Charizard' ? 'Fireball!!' : 'That is not Charizard!'