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
module LengthConversions
    WEBSITE = "www.examplesite.com" # -> constant

    def self.miles_to_feet(miles) # -> allows for accessing using dot notation.
    ## example - LengthConversions.miles_to_feet(arg)
    miles * 5280
    end

    def self.miles_to_inches(miles)
        feet = miles_to_feet(miles)
        feet * 12
    end

    def self.miles_to_centimeters(miles)
        inches = miles_to_inches(miles)
        inches * 2.54
    end
end

puts LengthConversions::WEBSITE
puts LengthConversions.miles_to_inches(200)
puts LengthConversions.miles_to_centimeters(45)


## SQUARE MODULE
module Square
    def self.area(side)
        side * side
    end
end

module Rectanlge
    def self.area(length, width)
        length* width
    end
end

module Circle

    PI = 3.14159 # -> becomes constant because it won't change
    def self.area(radius)
        PI * radius * radius
    end
end

puts Square.area(5)
puts Rectanlge.area(5,2)
puts Circle.area(90)
