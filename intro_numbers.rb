#WHOLE INTEGERS
puts "  > WHOLE INTEGERS < "
puts "-------------------"
p 0
p 100
p -837

#FLOATING POINT
puts " > FLOATING POINT NUMBERS < "
puts "-------------------"

p 5.987
p 2.7
p -10.5

#NUMBER METHODS
puts " > NUMBER METHODS < "
puts "-------------------"
puts ".next: increments number by 1"
p 5.next

puts ".class: gives blueprint that was used to create object"
p 5.class
p 2.75.class

#CONVERT NUM TO STRING
str = "5"
p str.to_i 
num = 10
p num.to_f
p num.to_s

pie = 3.14
p pie.to_i
p pie.to_s