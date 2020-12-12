#MODULE
## toolbox or container fo methods and constants
## used as needed
## create namespaces for methods with same name
## cannot be used to create instances
## can be mixed into classes to add behavior
## written in UpperCamelCase
## constants in modules are written in ALL CAPS.
## access module methods with dot operator
## access constants with the :: symbol
## :: -> scope resolution operator
## modules should be saved in their own files. 1 file per module
## require files using the require keyword and the relative location of the file between quotes
### you can also use require_relative if the module is located in the same directory

# module LengthConversions
#     WEBSITE = "www.examplesite.com" # -> constant

#     def self.miles_to_feet(miles) # -> allows for accessing using dot notation.
#     ## example - LengthConversions.miles_to_feet(arg)
#     miles * 5280
#     end

#     def self.miles_to_inches(miles)
#         feet = miles_to_feet(miles)
#         feet * 12
#     end

#     def self.miles_to_centimeters(miles)
#         inches = miles_to_inches(miles)
#         inches * 2.54
#     end
# end

# puts LengthConversions::WEBSITE
# puts LengthConversions.miles_to_inches(200)
# puts LengthConversions.miles_to_centimeters(45)


# ## SQUARE MODULE
# module Square
#     def self.area(side)
#         side * side
#     end
# end

# module Rectanlge
#     def self.area(length, width)
#         length* width
#     end
# end

# module Circle

#     PI = 3.14159 # -> becomes constant because it won't change
#     def self.area(radius)
#         PI * radius * radius
#     end
# end

# puts Square.area(5)
# puts Rectanlge.area(5,2)
# puts Circle.area(90)


# # MATH MODULES
# ## Math.method
# puts Math::PI
# puts Math.sqrt(16)

## MIXINS
## modules attached to classes
# class OlympicMedal
#     # <, <=, >=, <=>, .between?
#     include Comparable ## mixins
#     ## must define a method for the comparison operators from this mixin.

#     MEDAL_VALUES = {"Gold" =>3, "Silver" => 2, "Bronze" => 1}

#     attr_reader :type
#     def initialize(type,weight)
#         @type = type
#         @weight = weight
#     end

#     # -1 -> value on left is smaller
#     # 0 -> 2 values are ewual
#     # 1 -> values on the left is greater
#     def <=> (other)
#         if MEDAL_VALUES[type] < MEDAL_VALUES[other.type]
#            -1
#         elsif MEDAL_VALUES[type] == MEDAL_VALUES[other.type]
#             0
#         else
#             1
#         end
#     end
# end


# bronze = OlympicMedal.new("Bronze", 5)
# silver = OlympicMedal.new("Silver", 10)
# gold = OlympicMedal.new("Gold", 3)

# puts bronze > silver
# puts bronze == bronze
# puts silver > gold

# MIXINS
## module that injects additional behavior into a class
## allows us to mimic inheritance from more than one class

##custom mixin
# module Purchaseable
#     def purchase(item) 
#         "#{item} has been purchased"
#     end
# end

# class Bookstore
#     include Purchaseable ##mixin
# end

# class Supermarket
#     include Purchaseable
# end

# class CornerMart < Supermarket

# end

# p Supermarket.ancestors 

# barnes_and_nobles = Bookstore.new
# p barnes_and_nobles.purchase("Out of Her")

# PREPEND keyword
## places module method before the defined method within the class

# module Purchaseable
#     def purchase(item) 
#         "#{item} has been purchased"
#     end
# end
    
# class Bookstore
#     prepend Purchaseable ##mixin
#     ## makes modules more critical and override the purchase in the bookstore.

#     def purchase(item)
#         "You bought a copy of #{item}"
#     end
# end

# p Bookstore.ancestors
# bn = Bookstore.new


# EXTEND KEYWORD
## allows you to call methods directly on the class.
# module Announcer
#     def who_am_i
#         "The name os this class is #{self}"
#     end
# end

# class Dog
#     include Announcer
# end

# class Cat  
#     extend Announcer
# end

# watson = Dog.new
# p watson.who_am_i

# p Cat.who_am_i


# ENUMERABLE
# class ConvenienceStore
#     include Enumerable 
#     attr_reader :snacks

#     def initialize
#         @snacks = []
#     end

#     def add_snack(snack)
#         snacks << snack
#     end

#     def each
#         snacks.each do |snack|
#             yield snack
#         end 
#     end
# end

# walmart = ConvenienceStore.new
# walmart.add_snack("Doritos")
# walmart.add_snack("Reeses")
# walmart.add_snack("Twix")

# walmart.each {|snack| puts "#{snack} is delicious"}